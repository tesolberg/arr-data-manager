import json
from docx import Document
from docx.shared import Inches
from docx.shared import RGBColor

# for testing
import csv


# dict av enkeltbesvarelse -> void + rapport i docx-format
def generate_report(data, codebook_path):
    
    # Sets colors
    red = RGBColor(0xff, 0x2d, 0x00)
    gray = RGBColor(0xbb, 0xbb, 0xbb)


    # loads codebook as dict
    with open(codebook_path, encoding="utf-8") as f:
        codebook = json.load(f)

    # creates new document and adds heading
    document = Document()
    document.add_heading('Pasientrapportert kartlegging - arbeidsrettet rehabilitering', 0)
    document.add_heading('Avdeling for fysikalsk medisin og forebygging, Sørlandet sykehus HF', 3)

    ### INNLEDNING ###
    # Fnr
    demografi = document.add_paragraph("Fødselsnummer: " + data["fnr"])
    
    # Dato for utfylling
    demografi.add_run("\n")
    demografi.add_run("Dato utfylt: " + data["Opprettet"])
    
    # Morsmål og lese-/skrivevansker
    demografi.add_run("\n")
    if (data["morsmaal"] == "annet"):
        demografi.add_run("Morsmål: " + data["morsmaal-tekst"])
        write_var_snippet_and_response("sprakvansker", data, codebook, document, demografi)

    # Sivilstatus, barn, husholdning
    write_var_snippet_and_response("sivilstatus", data, codebook, document, demografi)
    demografi.add_run("\nBarn: " + data["barn"])
    demografi.add_run("\nPersoner i husholdningen (i tillegg til pas): " + data["antall-i-husholdning"])

    ### OPPSUMMERING ###
    document.add_heading('Oppsummering')
    oppsummering = document.add_paragraph("Viktigste problem: " + data["viktigste-problem"])
    oppsummering.add_run("\nOppfølging pasienten tror vil være mest nyttig: " + data["type-hjelp"])    
    
    # Ufør og erstatningssak
    run = oppsummering.add_run("\nErstatningssak")    
    run.font.color.rgb = red if (data["erstatningssak"] == "ja") else gray
    oppsummering.add_run(" | ")
    run = oppsummering.add_run("Uførsøknad")    
    run.font.color.rgb = red if (data["sokt-ufor"] == "ja") else gray
    
    # Jobbstatus

    # WPI
    oppsummering.add_run("\nWPI: " + str((wpi_score(data))))
    
    # SSS
    oppsummering.add_run("\nSSS: " + str((sss_score(data, codebook))))

    # Fibro = (WPI >=7 & SSS >=5 || WPI >=4 & SSS >=9) & >=4 kroppsregioner & >=3 mnd
    
    # HSCL-25
    
    # ISI



    # Smerte
    # Smerte (10- punkts skala etc.)
    # Verste
    # Beste
    # Gjsn
    # Varighet smerter

    # Fibroskjema
    # Utmattelse, kognisjon og trett (fargekodet)
    # Grå/svart på IBS, dep, hodepine
    # Oppramsing av smerteområder



    # # work related
    # write_work_related(data, codebook, document)

    # # physical activity
    # write_physical_activity(data, codebook, document)

    # # fear avoidance beliefs questionnaire
    # write_fabq(data, codebook, document)

    # # hads
    # write_hads(data, codebook, document)

    # # EQ5D-5L
    # write_eq5d(data, codebook, document)

    # # GSAQ
    # write_gsaq(data, codebook, document)

    # # restspm
    # document.add_heading("Avsluttende spørsmål")
    # write_var_snippet_and_response("helse-samlet", data, codebook, document)
    # write_var_snippet_and_response("godt-nok-utredet", data, codebook, document)

    # saves document to file
    document.save('sample_report.docx')



def write_eq5d(data, codebook, document):
    document.add_heading("EQ5D")
    write_response("eq5d-gange", data, codebook, document)
    write_response("eq5d-stell", data, codebook, document)
    write_response("eq5d-gjoremal", data, codebook, document)
    write_response("eq5d-smerter", data, codebook, document)
    write_response("eq5d-angst-dep", data, codebook, document)
    

def write_gsaq(data, codebook, document):
    document.add_heading("Global sleep assessment questionnaire")
    write_var_snippet_and_response("gsaq-innsovning", data, codebook, document)
    write_var_snippet_and_response("gsaq-oppvakning", data, codebook, document)
    write_var_snippet_and_response("gsaq-utvilt-dagtid", data, codebook, document)
    write_var_snippet_and_response("gsaq-vansker-holde-vaken", data, codebook, document)
    write_var_snippet_and_response("gsaq-dagtidfunksjon", data, codebook, document)
    write_var_snippet_and_response("gsaq-jobb-akt-hinder-sovn", data, codebook, document)
    write_var_snippet_and_response("gsaq-snorking", data, codebook, document)
    write_var_snippet_and_response("gsaq-apne", data, codebook, document)
    write_var_snippet_and_response("gsaq-restless-legs", data, codebook, document)
    write_var_snippet_and_response("gsaq-rykninger", data, codebook, document)
    write_var_snippet_and_response("gsaq-parasomnier", data, codebook, document)
    write_var_snippet_and_response("gsaq-trist-engstelig", data, codebook, document)
    
    document.add_paragraph("")
    p = document.add_paragraph("")
    p.add_run("Faktorer som forstyrrer søvnen").italic = True
    write_var_snippet_and_response("gsaq-smerter", data, codebook, document)
    write_var_snippet_and_response("gsaq-kroppslige-plager", data, codebook, document)
    write_var_snippet_and_response("gsaq-bekymringer", data, codebook, document)
    write_var_snippet_and_response("gsaq-medikamenter", data, codebook, document)
    


def write_hads(data, codebook, document):
    document.add_heading("Hospital anxiety depression scale")
    write_var_snippet_and_response("hads-tidlig-oppvakning", data, codebook, document)
    write_var_snippet_and_response("hads-panikk", data, codebook, document)
    write_var_snippet_and_response("hads-trist", data, codebook, document)
    write_var_snippet_and_response("hads-nervos", data, codebook, document)
    write_var_snippet_and_response("hads-interessetap", data, codebook, document)
    write_var_snippet_and_response("hads-hjertebank", data, codebook, document)
    write_var_snippet_and_response("hads-svak-apetitt", data, codebook, document)
    write_var_snippet_and_response("hads-redd", data, codebook, document)
    write_var_snippet_and_response("hads-ikke-verd-leve", data, codebook, document)
    write_var_snippet_and_response("hads-anhedoni", data, codebook, document)
    write_var_snippet_and_response("hads-rastlos", data, codebook, document)
    write_var_snippet_and_response("hads-irritabel", data, codebook, document)
    write_var_snippet_and_response("hads-langsomt", data, codebook, document)
    write_var_snippet_and_response("hads-bekymringer", data, codebook, document)



def write_fabq(data, codebook, document):
    document.add_heading('Fear avoidance beliefs questionnaire')
    write_var_text_and_response("sm-arsak-fysakt", data, codebook, document)
    write_var_text_and_response("fysakt-forverrer-sm", data, codebook, document)
    write_var_text_and_response("fysakt-skadelig", data, codebook, document)
    write_var_text_and_response("fysakt-utilradelig", data, codebook, document)
    write_var_text_and_response("sm-arsak-jobb", data, codebook, document)
    write_var_text_and_response("jobb-gjort-sm-verre", data, codebook, document)
    write_var_text_and_response("erstatningskrav", data, codebook, document)
    write_var_text_and_response("arbeid-for-tungt", data, codebook, document)
    write_var_text_and_response("jobb-forverrer-sm", data, codebook, document)
    write_var_text_and_response("jobb-kan-skade", data, codebook, document)
    write_var_text_and_response("burde-ikke-jobbe", data, codebook, document)
    write_var_text_and_response("klarer-ikke-jobbe", data, codebook, document)
    write_var_text_and_response("ikke-rtw-innen-3mnd", data, codebook, document)
    write_var_text_and_response("aldri-rtw", data, codebook, document)



def write_physical_activity(data, codebook, document):
    document.add_heading('Fysisk aktivitet')
    s = str(data["fysakt-timer"]) + " time(r) og " + str(data["fysakt-min"]) + " minutter moderat fysisk aktivitet siste uke."
    document.add_paragraph(s)



def write_work_related(data, codebook, document):

    document.add_heading('Arbeidshistorikk og utdanning')

    write_var_snippet_and_response("utdannelse", data, codebook, document)
    write_var_snippet_and_response("tid-i-arbeidslivet", data, codebook, document)
    write_var_snippet_and_response("yrke", data, codebook, document)
    write_var_snippet_and_response("arbeidsforhold", data, codebook, document)
    write_var_snippet_and_response("stillingsprosent", data, codebook, document)
    write_var_snippet_and_response("i-jobb-na", data, codebook, document, False)

    write_var_text_report_and_multi_response("sektor_1", data, codebook, document)

    write_var_snippet_and_response("sm-aap", data, codebook, document, False)

    write_var_text_report_and_multi_response("ytelser_1", data, codebook, document)

    write_var_snippet_and_response("varighet-sm-siste-ar", data, codebook, document)
    write_var_snippet_and_response("sokt-ufor", data, codebook, document)
    write_var_snippet_and_response("erstatningssak", data, codebook, document)
    write_var_snippet_and_response("arbeidsevne-generelt", data, codebook, document)
    write_var_snippet_and_response("arbeidsevne-fysiske-krav", data, codebook, document)
    write_var_snippet_and_response("arbeidsevne-mentale-krav", data, codebook, document)
    write_var_snippet_and_response("estimat-rtw", data, codebook, document)
    write_var_snippet_and_response("onsket-jobb", data, codebook, document)



def write_response(var, data, codebook, document):
    s = codebook[var]["responses"][data[var]]
    document.add_paragraph(s + ".")


def write_var_snippet_and_response(var, data, codebook, document, paragraph, colon=True):
    # skip if value is missing
    if(data[var] == ""):
        return

    s = ""
    s += codebook[var]["var_text_report"]
    
    if(colon):
        s += ": "
    else:
        s += " "
    
    response_code = data[var]
    s += codebook[var]["responses"][response_code]

    paragraph.add_run("\n" + s)

def write_var_text_and_response(var, data, codebook, document, colon=True):
    # skip if value is missing
    if(data[var] == ""):
        return

    s = ""
    s += codebook[var]["var_text"]
    
    if(colon):
        s += ": "
    else:
        s += " "
    
    response_code = data[var]
    s += codebook[var]["responses"][response_code]

    document.add_paragraph(s)



def write_var_text_report_and_multi_response(var, data, codebook, document, colon=True):
    s = ""
    s += codebook[var]["var_text_report"]
    if(colon):
        s += ": "
    else:
        s += " "

    response = ""
    num_of_responses = len(codebook[var]["responses"])
    base_var = var[:-2]
    for i in range(1, num_of_responses + 1):
        respons_var = base_var + "_" + str(i)
        if(data[respons_var] != ""):
            if(len(response) == 0):
                response += codebook[respons_var]["responses"][data[respons_var]]
            else:
                response += ", " + codebook[respons_var]["responses"][data[respons_var]].lower()

    s += response

    if(len(response) > 0):
        document.add_paragraph(s)


def wpi_score(data):
    counter = 0
    for key in data:
        if (key[:21] == "fibro-smerteomraader_"):
            if len(data[key]) > 0:
                counter += 1
    return counter

def sss_score(data, codebook):
    counter = 0
    counter += int(codebook["fibro-utmattelse"]["responses"][data["fibro-utmattelse"]])
    counter += int(codebook["fibro-utmattelse"]["responses"][data["fibro-kognisjon"]])
    counter += int(codebook["fibro-utmattelse"]["responses"][data["fibro-trett"]])
    counter += 1 if data["fibro-mage"] == "ja" else 0
    counter += 1 if data["fibro-depresjon"] == "ja" else 0
    counter += 1 if data["fibro-hodepine"] == "ja" else 0
    return counter

def main():
    row =  get_first_row("data/test-data.tsv")
    generate_report(row, "data/codebook.json")

def get_first_row(path):
    with open(path, newline="") as csvfile:
        reader = csv.DictReader(csvfile, dialect="excel-tab")
        row = reader.__next__()
        return row

if __name__ == "__main__":
    main()
