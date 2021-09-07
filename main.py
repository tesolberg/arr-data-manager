import csv
from report_generator import generate_report


def main():
    path =  ("data/data.tsv")
    
    with open(path, newline="") as csvfile:
        dr = csv.DictReader(csvfile, dialect="excel-tab")
        
        # skip første rad som inneholder variabelkoder
        firstDataRow = dr.__next__()    

        # generer rapport for første rad med verdier
        generate_report(firstDataRow, "data/codebook.json")

    print("Successful termination")



if __name__ == "__main__":
    main()
