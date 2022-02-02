from os import listdir
from os.path import isfile, join
import csv
import report_generator as rg
import id_manager
import os
import crypto_manager as cm
import configparser


def main():
    
    config = configparser.ConfigParser()
    config.read('config.ini')

    if config.getboolean('general', 'devmode'):
        print('\nRunning in development mode\n')
    else:
        print('\nRunning in production mode\n')

    cm.decrypt_all_new_submissions(
        config['paths']['newencryptedsubmissionspath'], 
        config['paths']['newdecryptedsubmissionspath'], 
        config['paths']['privkeypath'],
        config['paths']['encryptedarchivepath'],
        not config.getboolean('general', 'devmode'))
            
    # hent alle filnavn i nye-besvarelse-mappen
    p = config['paths']['newdecryptedsubmissionspath']
    fileNames = [f for f in listdir(p) if isfile(join(p, f))]

    print('*** GENERATING REPORTS ***')
    newReports = False

    # iterer over besvarelsene
    for fileName in fileNames:
        if(fileName[0:1] != "."):   # guard against .ds_store        
            with open(config['paths']['newdecryptedsubmissionspath'] + fileName, newline="", encoding="utf-8-sig") as csvfile:    
                
                newReports = True

                # convert tsv file into dict
                reader = csv.DictReader(csvfile, dialect="excel-tab")
                data = reader.__next__()

                # gets respondentID
                respondentID = id_manager.get_id_code(data["fnr"])
                
                # utfør prosess ut i fra type besvarelse
                if data["formId"] == config['formIDs']['t0_formid']:
                    # generer rapport til DIPS
                    rg.generate_report(data, "kodebok/codebook.json", config['paths']['reportexportpath'], respondentID)
                    # legg inn data i kvalitetsregister
                else:
                    print("Feilmelding: FormId " + data["formId"] +" ikke støttet")


    if not newReports:
        print('No new reports generated')

    # Flytter alle nye besvarelser til "i-forlop"-mappen
    if not config.getboolean('general', 'devmode'):
        move_files(fileNames, config)

        i = input("Prosessering fullført. Ønskter du å hente fødselsnummer fra respondent-ID? (y/n + enter)\n")
        if i == "y":
            import finnfnr
    else:
        print('\n*** PROSESS FULLFØRT ***')


    # TODO Kvalitetsregisteret
    # Ta alle nye besvarelser fra Anette
    # Se etter kartlegging -> merge hvis den finner
    # Anonymiser
    # Legg inn som ny rad i registeret


def move_files(fileNames, config):
    for fileName in fileNames:
        if(fileName[0:1] != "."):   # guards against .ds_store
            os.rename(config['paths']['newdecryptedsubmissionspath'] + fileName, config['paths']['processedsubmissionspath'] + fileName)

        
    

if __name__ == "__main__":
    main()
