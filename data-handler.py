from os import listdir
from os.path import isfile, join
import csv
import report_generator as rg

def main():
# hent alle filnavn i nye-besvarelse-mappen
    newSubmissionsPath = "data/nye-besvarelser"
    reportExportPath = "export"

    onlyfiles = [f for f in listdir(newSubmissionsPath) if isfile(join(newSubmissionsPath, f))]

    for fileName in onlyfiles:
        if(fileName[0:1] != "."):   # guards against .ds_store
            with open(newSubmissionsPath + "/" + fileName, newline="") as csvfile:
                reader = csv.DictReader(csvfile, dialect="excel-tab")
                data = reader.__next__()
                rg.generate_report(data, "kodebok/codebook.json", "export/" + fileName[:-3] + "docx")


# TODO
# lag oppføring i koblingsnøkkelen ut i fra fnr
# lag rapport med koblingsnøkkel
# flytt filen til aktive-forlop-mappen




if __name__ == "__main__":
    main()
