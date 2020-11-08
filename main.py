from docx import Document
from docx.shared import Inches
import csv
from codebook import codebook
import locale

def main():
    #print(locale.locale_alias)
    locale.setlocale(locale.LC_ALL, 'norwegian')
    row =  get_first_row("data.csv")

    cb = codebook("codebook.json")
    generate_report(row, cb)


# dict av enkeltbesvarelse -> void + rapport i word med filnavn = checksum
def generate_report(prom_data, codebook):
    document = Document()

    document.add_heading('Rapport fra nettbasert kartlegging - Arbeidsrettet rehabilitering', 0)

    document.add_heading('Arbeidshistorikk og utdanning')

    for variable in codebook.data:
        if(variable == "fnr"):
            continue
        print(variable)
        var_report_format = codebook.data[variable]["data-name"]
        document.add_paragraph (var_report_format + ": " + codebook.data[variable]["responses"][prom_data[variable]])
 



    document.save('demo.docx')



def get_first_row(path):
    with open(path, newline="") as csvfile:
        reader = csv.DictReader(csvfile, dialect="excel-tab")
        row = reader.__next__()
        return row


if __name__ == "__main__":
    main()
