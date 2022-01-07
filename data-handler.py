from os import listdir
from os.path import isfile, join
import csv
import report_generator as rg
import id_manager
import os
import sys

# Sets paths
print(os.getcwd())
path_arr = os.path.dirname(os.getcwd())
path_durable = os.path.dirname(os.path.dirname(os.getcwd()))
newSubmissionsPath = path_arr + "/nye-besvarelser/"
reportExportPath = path_durable + "/file-export/"

t0_formId = "221073" # T0 - Kartlegging før poliklinikk


def main():
    
    # setter testmode variabel
    testMode = False
    if len(sys.argv) > 1:
        if (sys.argv[1] == "test"):
            testMode = True
        else:
            print("Error: Invalid argument given to data handler: " + sys.argv[1])
            return
    # hent alle filnavn i nye-besvarelse-mappen
    fileNames = [f for f in listdir(newSubmissionsPath) if isfile(join(newSubmissionsPath, f))]

    # iterer over besvarelsene
    for fileName in fileNames:
        if(fileName[0:1] != "."):   # guard against .ds_store        
            with open(newSubmissionsPath + "/" + fileName, newline="", encoding="utf-8") as csvfile:    
                
                # convert tsv file into dict
                reader = csv.DictReader(csvfile, dialect="excel-tab")
                data = reader.__next__()

                # gets respondentID
                respondentID = id_manager.get_id_code(data["fnr"])
                
                # utfør prosess ut i fra type besvarelse
                if data["formId"] == t0_formId:
                    # generer rapport til DIPS
                    rg.generate_report(data, "kodebok/codebook.json", reportExportPath, respondentID)
                    # legg inn data i kvalitetsregister
                else:
                    print("FormId" + data["formId"] +"ikke støttet")


    # Flytter alle nye besvarelser til "i-forlop"-mappen
    if not testMode:
        move_files((fileNames))

        i = input("Prosessering fullført. Ønskter du å hente fødselsnummer fra respondent-ID? (y/n + enter)\n")
        if i == "y":
            import finnfnr

    # TODO Kvalitetsregisteret
    # Ta alle nye besvarelser fra Anette
    # Se etter kartlegging -> merge hvis den finner
    # Anonymiser
    # Legg inn som ny rad i registeret


def move_files(fileNames):
    for fileName in fileNames:
        if(fileName[0:1] != "."):   # guards against .ds_store
            os.rename(newSubmissionsPath + "/" + fileName, path_arr + "/ferdig-behandlet/" + fileName)

        
    

if __name__ == "__main__":
    main()
