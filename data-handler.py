from os import listdir
from os.path import isfile, join
import csv
import report_generator as rg
import id_manager
import os

# Sets paths
print(os.getcwd())
path_arr = os.path.dirname(os.getcwd())
path_durable = os.path.dirname(os.path.dirname(os.getcwd()))
newSubmissionsPath = path_arr + "/nye-besvarelser/"
reportExportPath = path_durable + "/file-export/"

def main():
    testMode = False

    # hent alle filnavn i nye-besvarelse-mappen
    fileNames = [f for f in listdir(newSubmissionsPath) if isfile(join(newSubmissionsPath, f))]

    # Genererer respondent-IDer og rapporter
    generate_reports(fileNames)

    # Flytter alle nye besvarelser til "i-forlop"-mappen
    # TODO Lage egen mappe for besvarelser og egen for anettes
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


def generate_reports(fileNames):
    for fileName in fileNames:
        if(fileName[0:1] != "."):   # guards against .ds_store
            with open(newSubmissionsPath + "/" + fileName, newline="") as csvfile:
                
                # convert tsv file into dict
                reader = csv.DictReader(csvfile, dialect="excel-tab")
                data = reader.__next__()

                # gets respondentID
                respondentID = id_manager.get_id_code(data["fnr"])
                
                # generates report
                rg.generate_report(data, "kodebok/codebook.json", reportExportPath, respondentID)


def move_files(fileNames):
    for fileName in fileNames:
        if(fileName[0:1] != "."):   # guards against .ds_store
            os.rename(newSubmissionsPath + "/" + fileName, path_arr + "/i-forlop/" + fileName)




if __name__ == "__main__":
    main()
