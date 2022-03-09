from os import listdir
from os.path import isfile, join
import csv
import report_generator as rg
import id_manager
import os
import crypto_manager as cm
import configparser
import qualreg
import shutil


def main():
    
    config = configparser.ConfigParser()
    config.read('config.ini')

    if config.getboolean('general', 'devmode'):
        print('\nKjører i utviklermodus\n')
    else:
        print('\Kjører i produksjonsmodus\n')

    # TODO: Dekryptere filer fra alle spørreskjemaene
    cm.decrypt_submissions_in_folder(
        config['paths']['newencryptedsubmissionspath'], 
        config['paths']['newdecryptedsubmissionspath'], 
        config['paths']['privkeypath'],
        config['paths']['encryptedarchivepath'],
        not config.getboolean('general', 'devmode'))
            
    # hent alle filnavn i nye-besvarelse-mappen
    p = config['paths']['newdecryptedsubmissionspath']
    fileNames = [f for f in listdir(p) if isfile(join(p, f))]

    print('*** GENERERER RAPPORTER ***')
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
                else: # TODO: Legge til behandling av legepolregistreringsskjema
                    print("Feilmelding: FormId " + data["formId"] +" ikke støttet")


    if not newReports:
        print('Ingen nye rapporter generert')

    # Flytter nye besvarelser til "i-forlop"-mappen/prosesserte rapporter
    move_files(fileNames, config)

    # Flytter alle filer i 
    qualreg.scrub_and_transfer_all()

    print('\n*** PROSESS FULLFØRT ***')


    # TODO Kvalitetsregisteret
    # Ta alle nye besvarelser fra Anette
    # Se etter kartlegging -> merge hvis den finner
    # Anonymiser
    # Legg inn som ny rad i registeret


def move_files(fileNames, config):
    for fileName in fileNames:
        if(fileName[0:1] != "."):   # guards against .ds_store
            src = config['paths']['newdecryptedsubmissionspath'] + fileName
            dst = config['paths']['processedsubmissionspath'] + fileName

            if config.getboolean('general', 'devmode'):
                shutil.copyfile(src, dst)
            else:
                os.replace(src, dst )
    

if __name__ == "__main__":
    main()
