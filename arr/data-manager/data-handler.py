from os import listdir
from os.path import isfile, join
import csv
import report_generator as rg
import id_manager

# Sets paths
newSubmissionsPath = "data/nye-besvarelser"
reportExportPath = "export"


def main():
    # hent alle filnavn i nye-besvarelse-mappen
    fileNames = [f for f in listdir(newSubmissionsPath) if isfile(join(newSubmissionsPath, f))]

    # Genererer respondent-IDer og rapporter
    generate_reports(fileNames)



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
                rg.generate_report(data, "kodebok/codebook.json", "export/" + fileName[:-3] + "docx", respondentID)



# TODO
# lag oppføring i koblingsnøkkelen ut i fra fnr
# lag rapport med koblingsnøkkel
# flytt filen til aktive-forlop-mappen




if __name__ == "__main__":
    main()
