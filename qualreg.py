import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)

from os.path import isfile, join
import pandas as pd
import configparser
import id_manager
import os
from datetime import date

 
# Henter besvarelse fra fil, fjerner fnr, legger inn respondetID og overfører data til gitt csv-fil
def scrub_and_transfer(submission):
    
    config = configparser.ConfigParser()
    config.read('config.ini')

    # les inn submission
    data = pd.read_csv(submission, sep="\t")

    # legger inn respondentID
    fnr = str(data.iloc[0]["fnr"])

    if(len(fnr) < 11):
        fnr = "0" + fnr

    respondentID = id_manager.get_id_code(fnr)
    data.insert(1, "respondentId", respondentID)

    thirdToLast = fnr[-3:-2]
    mann = int(thirdToLast) % 2 > 0
    if(mann):
        data.insert(2, "kjonn", "mann")
    else:
        data.insert(2, "kjonn", "kvinne")


    # Legger ti alder
    data.insert(3, "alder", age(fnr))

    # fjerner fnr
    data = data.drop("fnr", axis=1)

    # setter korrekt registersti ut i fra skjema ID (psudonumysiert registerfil)
    formID = str(data["formId"][0])
    regPath = ""
    if formID == config["formIDs"]["t1_formid"]:
        regPath = config["paths"]["t1psudoregistrypath"]
    elif formID == config["formIDs"]["legepol_formid"]:
        regPath = config["paths"]["legepolpsudoregistrypath"]
    else:
        print("FormID " + formID + " ikke støttet.")
        return

    # sjekket at register finnes. Hvis det ikke gjør det -> lag nytt register baset på besvarelse
    if(not os.path.isfile(regPath)):
        print("Registerfil ble ikke funnet. Oppretter ny registerfil basert på besvarelsen")
        data.to_csv(regPath, sep="\t", index=False)
    else:
        registry = pd.read_csv(regPath, sep="\t")
        updatedReg = pd.concat([registry, data])
        updatedReg.to_csv(regPath, sep="\t", index=False)

    # hvis produksjon -> slett submission-fil
    if not config.getboolean("general", "keepprocessed"):
        os.remove(submission)
    # if not config.getboolean('general', 'devmode'):

    print("Besvarelse overført med respondentID: " + respondentID)


def scrub_and_transfer_all():
    
    print("\n*** OVERFØRER DATA TIL PSUDONYMISERT KVALITETSREGISTER ***")

    config = configparser.ConfigParser()
    config.read('config.ini')
    
    # hent alle filnavn i nye-besvarelser-mappen
    p = config['paths']['processedsubmissionspath']
    fileNames = [f for f in os.listdir(p) if isfile(join(p, f))]

    newSubmissions = False

    # iterer over filene
    for fileName in fileNames:
        if(fileName[0:1] != "."):   # guard against .ds_store        
            newSubmissions = True
            scrub_and_transfer(p + fileName)

    if not newSubmissions:
        print("Ingen nye besvarelser ble overført til kvalitetsregisteret")


    # Gjennomgår alle registre og psudoregistre og overfører alle besvarelser med IDer som ikke lenger er i kodelisten
def transfer_all_anonymized_data():
    print("\n*** OVERFØRER DATA FRA PSUDONYMISERT KVALITETSREGISTER TIL ANONYMISERT KVALITETSREGISTER***")

    config = configparser.ConfigParser()
    config.read('config.ini')
    
    # Itererer over alle psudoregistre. Hvis psudoregisteret finnes overføres besvarelser som er anonymisert til registeret
    if(os.path.isfile(config["paths"]["t1psudoregistrypath"])):
        print("Psudoregister T1")
        transfer_anonymized_data(config["paths"]["t1psudoregistrypath"], config["paths"]["t1registrypath"])
    else: print("Fant ikke psudoregister T1")

    if(os.path.isfile(config["paths"]["t2psudoregistrypath"])):
        print("Psudoregister T2")
        transfer_anonymized_data(config["paths"]["t2psudoregistrypath"], config["paths"]["t2registrypath"])
    else: print("Fant ikke psudoregister T2")

    if(os.path.isfile(config["paths"]["legepolpsudoregistrypath"])):
        print("Psudoregister legepol")
        transfer_anonymized_data(config["paths"]["legepolpsudoregistrypath"], config["paths"]["legepolregistrypath"])
    else: print("Fant ikke psudoregister legepol")


    # Overfører alle besvarelser fra psudoregister til register hvis besvarelsens ID ikke er i listen som blir gitt
def transfer_anonymized_data(psudoRegisterPath, registerPath):    
    # For test. Fjerner registerfil
    # if(os.path.isfile(registerPath)):
    #     os.remove(registerPath)
    
    # Last inn psudoregister som dataframe
    psudoReg = pd.read_csv(psudoRegisterPath, sep="\t")
    
    # sjekket at register finnes. Hvis det ikke gjør det -> lag nytt register baset på psudoregister
    if(not os.path.isfile(registerPath)):
        print("Registerfil ble ikke funnet. Oppretter ny registerfil basert på psudoregister")
        psudoReg.iloc[:0].to_csv(registerPath, sep="\t", index=False)

    # Laster inn anonymisert register
    registry = pd.read_csv(registerPath, sep="\t")
    
    foundSubmission = False

    # Iterer baklengs over besvarelser
    for i in range(len(psudoReg.index) -1,0, -1):
        id = str(psudoReg.iloc[i]["respondentId"])
        submission = psudoReg.loc[i]

        # Hvis besvarelsens ID ikke finnes i kodelisten
        if (len(id_manager.id_to_fnr(id)) == 0):
            print("Overfører besvarelse med id-kode:{} fra psudoregister til anonymisert register".format(id))
            # Overfør besvarelsen til register
            registry = registry.append(submission, ignore_index=True)
            # TODO: Forstå concat og bytte ut append
    
            # Fjerner overført besvarelse fra psudoregister
            psudoReg.drop(i, inplace=True)

            foundSubmission = True
            
    # Skriver modifiserte registre til fil
    registry.to_csv(registerPath, sep="\t", index=False)
    psudoReg.to_csv(psudoRegisterPath, sep="\t", index=False)

    print("-- Fant ingen nye anonymiserte besvarelse")


def age(fnr):

    year = int(fnr[4:6])
    this_year_last_two_digits = date.today().year - 2000
    year = 1900 + year if year > this_year_last_two_digits else 2000 + year

    birthdate = date(year,int(fnr[2:4]),int(fnr[0:2]))

    today = date.today()
    age = today.year - birthdate.year - ((today.month, today.day) < (birthdate.month, birthdate.day))
    return str(age)


### TEST ###
# scrub_and_transfer("test-files/decrypted-data/testbesvarelse-1.csv")

