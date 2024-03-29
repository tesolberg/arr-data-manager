from os import listdir
from os.path import isfile, join
import csv
import report_generator as rg
import report_generator_deprecated as rg_old
import id_manager
import os
import crypto_manager as cm
import configparser
import qualreg
import shutil
import logging
from datetime import datetime
import subprocess, platform
import sys

def main():
    
    # setter opp logger
    logger = logging.getLogger(__name__)
    logger.setLevel(logging.INFO)
    formatter = logging.Formatter("%(levelname)s:%(name)s:%(message)s")
    file_handler = logging.FileHandler("data-manager.log")
    file_handler.setFormatter(formatter)
    logger.addHandler(file_handler)
    logger.info("Starting execution of Data Manager at " + datetime.now().strftime("%d/%m/%Y %H:%M:%S") + ". User: " + os.getlogin())

    # leser inn config-filen
    config = configparser.ConfigParser()
    config.read('config.ini')

    # printer programmets aktive modus
    if config.getboolean('general', 'devmode'):
        print('\nKjører i utviklermodus\n')
    else:
        print('\nKjører i produksjonsmodus\n')

    # dekrypterer alle besvarelser og legger dem i nye-besvarelser-mappen
    if config.getboolean("general","decryptnewsubmissions"):
        decrypt_all_submissions(config)
    else:
        print("Hopper over dekryptering\n")

    # henter alle filnavn i nye-besvarelse-mappen
    p = config['paths']['decryptedsubmissionspath']
    fileNames = [f for f in listdir(p) if isfile(join(p, f))]

    # genererer rapporter
    if config.getboolean("general","generatereports"):
        generate_reports(config, fileNames)

    # Flytter nye besvarelser til prosesserte besvarelser-mappen
    move_files(fileNames, config)

    # Flytter alle prosesserte besvarelser over til psudonymisert kvalitetsregister
    qualreg.scrub_and_transfer_all()

    # Flytter anonymiserte besvarelser fra psudonymisert register til anonymisert register
    qualreg.transfer_all_anonymized_data()

    # Kopierer registerdata til eksportmappen   #TODO: Få denne til å eksportere anonymisert reg
    if config.getboolean("general",'exportqualreg'):
        export_qual_reg(config, logger)

    print('\n*** PROSESS FULLFØRT ***')

    if config.getboolean('general', 'devmode'):
        if (len(sys.argv) > 1 and len(sys.argv[1]) > 0):
            print("\nOpening report " + sys.argv[1] + ".docx")
            filepath = config['paths']['reportexportpath'] + sys.argv[1] + ".docx"
            if platform.system() == 'Darwin':       # macOS
                subprocess.call(('open', filepath))
            elif platform.system() == 'Windows':    # Windows
                os.startfile(filepath)
            else:                                   # linux variants
                subprocess.call(('xdg-open', filepath))


def export_qual_reg(config, logger):
    src_t1 = config['paths']['t1registrypath']
    src_legepol = config['paths']['legepolregistrypath']
    dst = config['paths']['reportexportpath']

    shutil.copy(src_t1, dst)
    shutil.copy(src_legepol, dst)

    logger.info("Kvalitetsregistre kopiert til eksportmappen.")

    return

def decrypt_all_submissions(config):    
    print('*** DEKRYPTERER ***')

    # Dekrypterer T1
    print("T1 v1.1")
    cm.decrypt_submissions_in_folder(
        config['paths']['encrypted-t1-path'], 
        config['paths']['decryptedsubmissionspath'], 
        config['paths']['privkeypath'],
        config['paths']['encryptedarchivepath'],
        removeEncrypted= config.getboolean('general', 'removeencrypted'))

    # Dekrypterer T1_v2
    print("T1 v2.0")
    cm.decrypt_submissions_in_folder(
        config['paths']['encrypted-t1v20-path'], 
        config['paths']['decryptedsubmissionspath'], 
        config['paths']['privkeypath'],
        config['paths']['encryptedarchivepath'],
        removeEncrypted= config.getboolean('general', 'removeencrypted'))

    # Dekrypterer T2_v10
    print("T2 v1.0")
    cm.decrypt_submissions_in_folder(
        config['paths']['encrypted-t2v10-path'], 
        config['paths']['decryptedsubmissionspath'], 
        config['paths']['privkeypath'],
        config['paths']['encryptedarchivepath'],
        removeEncrypted= config.getboolean('general', 'removeencrypted'))

    # Dekrypterer legepol (sparer ikke på krypterte)
    print("Legepol")
    cm.decrypt_submissions_in_folder(
        config['paths']['encrypted-legepol-path'], 
        config['paths']['decryptedsubmissionspath'], 
        config['paths']['privkeypath'],
        removeEncrypted= config.getboolean('general', 'removeencrypted'))


def generate_reports(config, fileNames):
    print('*** GENERERER RAPPORTER ***')
    newReports = False

    # iterer over besvarelsene og genererer rapporter
    for fileName in fileNames:
        if(fileName[0:1] != "."):   # guard against .ds_store        
            with open(config['paths']['decryptedsubmissionspath'] + fileName, newline="", encoding="utf-8-sig") as csvfile:    
                
                newReports = True

                # convert tsv file into dict
                reader = csv.DictReader(csvfile, dialect="excel-tab")
                data = reader.__next__()

                # gets respondentID
                respondentID = id_manager.get_id_code(data["fnr"])
                
                # T1 v1.1
                if data["formId"] == config['formIDs']['t1_formid']:
                    rg_old.generate_report_t1v11(data, config['paths']['kodebok-t1v11'], config['paths']['reportexportpath'], respondentID)

                # T1 v2.0
                elif data["formId"] == config['formIDs']['t1v20_formid']:
                    rg.generate_report_t1v20(data, config['paths']['kodebok-t1v20'], config['paths']['reportexportpath'], respondentID)

                # T2 v1.0
                elif data["formId"] == config['formIDs']['t2v10_formid']:
                    rg.generate_report_t2v10(data, config['paths']['t1v20psudoregistrypath'], config['paths']['kodebok-t2v10'],config['paths']['kodebok-t1v20'], config['paths']['reportexportpath'], respondentID)
                    # Fjern ID fra kodeliste

                # Legepol
                elif data["formId"] == config["formIDs"]["legepol_formid"]:
                    continue

                # Ikke støttet skjema-ID
                else:
                    print("Feilmelding: FormId " + data["formId"] +" ikke støttet")


    if not newReports:
        print('Ingen nye rapporter generert')


def move_files(fileNames, config):
    for fileName in fileNames:
        if(fileName[0:1] != "."):   # guards against .ds_store
            src = config['paths']['decryptedsubmissionspath'] + fileName
            dst = config['paths']['processedsubmissionspath'] + fileName

            if config.getboolean('general', 'keepdecrypted'):
                shutil.copyfile(src, dst)
            else:
                os.replace(src, dst)
    

if __name__ == "__main__":
    main()
