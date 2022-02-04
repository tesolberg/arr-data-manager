from os.path import isfile, join
import pandas as pd
import configparser
import id_manager
import os

# Henter besvarelse fra fil, fjerner fnr, legger inn respondetID og overfører data til gitt csv-fil
def scrub_and_transfer(submission):
    
    config = configparser.ConfigParser()
    config.read('config.ini')

    # les inn submission
    data = pd.read_csv(submission, sep="\t")

    # legger inn respondentID
    fnr = str(data.iloc[0]["fnr"])
    respondentID = id_manager.get_id_code(fnr)
    data.insert(1, "respondentId", respondentID)

    # fjerner fnr
    # data.at[0,"fnr"] = "---"
    data = data.drop("fnr", axis=1)

    # sjekket at register finnes. Hvis det ikke gjør det -> lag nytt register baset på besvarelse
    regPath = config["paths"]["t0registrypath"] # TODO: sjekk på rett register opp mot formId i stedet for hard coded
    if(not os.path.isfile(regPath)):
        print("Register ble ikke funnet. Oppretter nytt register basert på besvarelsen")
        data.to_csv(regPath, sep="\t", index=False)
    else:
        registry = pd.read_csv(regPath, sep="\t")
        updatedReg = pd.concat([registry, data])
        updatedReg.to_csv(regPath, sep="\t", index=False)

    # hvis produksjon -> slett submission-fil
    if not config.getboolean("general", "devmode"):
        os.remove(submission)
    # if not config.getboolean('general', 'devmode'):

    print("Besvarelse overført med respondentID: " + respondentID)
        

def scrub_and_transfer_all():
    
    print("\n*** OVERFØRER DATA TIL KVALITETSREGISTER ***")

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

### TEST ###
# scrub_and_transfer("test-files/decrypted-data/testbesvarelse-1.csv")
