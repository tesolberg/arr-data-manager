from os import listdir
from os.path import isfile, join
import csv

def main():
# hent alle filnavn i nye-besvarelse-mappen
    newSubmissionsPath = "data/nye-besvarelser"
    reportExportPath = "export"

    onlyfiles = [f for f in listdir(newSubmissionsPath) if isfile(join(newSubmissionsPath, f))]

    for fileNames in onlyfiles:
        with open(newSubmissionsPath + "/" + fileNames, newline="") as csvfile:
            reader = csv.DictReader(csvfile, dialect="excel-tab")
            data = reader.__next__()
            

# for hvert filnavn
# les inn dataene
# lag oppføring i koblingsnøkkelen ut i fra fnr
# lag rapport
# flytt filen til aktive-forlop-mappen




if __name__ == "__main__":
    main()
