import json
from docx import Document
from docx.shared import Inches
from docx.shared import RGBColor
from docx.shared import Pt

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
    yrke = codebook["yrke"]["responses"][data["yrke"]] + " - " + data["yrke-fritekst"]
    if(data["arbeidsforhold"] == "ja"):
        oppsummering.add_run("\nNåværende yrke: " + yrke)
    else:
        oppsummering.add_run("\nSiste hovedyrke (har ikke arbeidsforhold): " + yrke)
    
    jobbstatus = ""
    if data["sm-aap"] == "nei": jobbstatus = "ikke sykemeldt"
    elif data["sm-aap"] == "delvis-sm": jobbstatus = "delvis sykemeldt"
    elif data["sm-aap"] == "fullt-sm": jobbstatus = "fullt sykemeldt"
    elif data["sm-aap"] == "aap": jobbstatus = "AAP"
    oppsummering.add_run(" (" + jobbstatus + ")")


    # WPI
    oppsummering.add_run("\nWPI (0-19): " + str((wpi_score(data))))
    
    # SSS
    oppsummering.add_run("\nSSS (0-12): " + str((sss_score(data, codebook))))

    # Antall smerteregioner
    oppsummering.add_run("\nAntall smerteregioner: " + str(number_of_pain_regions(data)))
    
    # Fibro = (WPI >=7 & SSS >=5 || WPI >=4 & SSS >=9) & >=4 kroppsregioner & >=3 mnd
    if(oppfyller_fibrokriterier(data)):
        oppsummering.add_run("\nOppfyller kriterier for fibromyalgi")
    else:
        oppsummering.add_run("\nOppfyller ikke kriterier for fibromyalgi")

    # HSCL-25
    oppsummering.add_run("\nHSCL-25 (klinisk terskelverdi = 1,7): " + str(hscl_score(data)))

    # ISI
    if (data["sovnproblemer"] == "nei"):
        oppsummering.add_run("\nAngir ikke søvnproblemer")
    else:
        oppsummering.add_run("\nISI: " + str(isi_score(data)))



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



    # # restspm
    # document.add_heading("Avsluttende spørsmål")
    # write_var_snippet_and_response("helse-samlet", data, codebook, document)
    # write_var_snippet_and_response("godt-nok-utredet", data, codebook, document)

    # saves document to file
    document.save('sample_report.docx')




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

def hscl_score(data):
    points = 0
    for key in data:
        if (key[0:4] == "hscl"):
            val = data[key]
            if val == "ikke-i-det-hele-tatt": points += 1
            elif val == "litt": points += 2
            elif val == "en-god-del": points += 3
            elif val == "svaert-mye": points += 4
            else: print("error, hscl response")
    return points / 25

def isi_score(data):
    points = 0
    for key in data:
        if (key[0:3] == "isi"):
            val = data[key]
            if val == "veldig-tilfreds" or val == "ingen": continue
            elif val == "milde" or val == "tilfreds" or val == "litt": points += 1
            elif val == "moderate" or val == "verken" or val == "noe": points += 2
            elif val == "alvorlige" or val == "utilfreds" or val == "ganske-mye": points += 3
            elif val == "veldig-alvorlige" or val == "veldig-utilfreds" or val == "veldig" or val == "veldig-mye": points += 4
            else: print("error, isi response: " + val)
    return points / 25

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

def number_of_pain_regions(data):
    # samle alle fibrokoder i en array
    smerteomraader = []
    for key in data:
        if (key[:21] == "fibro-smerteomraader_"):
            smerteomraader.append(data[key])

    counter = 0

    # Øvre venstre
    if "skulder-ven" in smerteomraader or "overarm-ven" in smerteomraader or "underarm-ven" in smerteomraader:
        counter += 1
    # Øvre høyre
    if "skulder-hoy" in smerteomraader or "overarm-hoy" in smerteomraader or "underarm-hoy" in smerteomraader:
        counter += 1
    # Nedre venstre
    if "hofte-ven" in smerteomraader or "legg-fot-ven" in smerteomraader or "laar-kne-ven" in smerteomraader:
        counter += 1
    # Nedre høyre
    if "hofte-hoy" in smerteomraader or "legg-fot-hoy" in smerteomraader or "laar-kne-hoy" in smerteomraader:
        counter += 1
    # Midtregion
    if "ovre-rygg" in smerteomraader or "korsrygg" in smerteomraader or "nakke-hals" in smerteomraader:
        counter += 1
    
    return counter


def oppfyller_fibrokriterier(data):
    wpi_and_sss = (wpi_score(data) >= 7 and sss_score(data, codebook) >= 5) or (wpi_score(data) >= 4 and sss_score(data, codebook) >= 9)
    mer_enn_1_aar = data["plager-mer-enn-et-aar"] == "ja" or int(data["plager-mnd"]) >= 3 
    return wpi_and_sss and mer_enn_1_aar and (number_of_pain_regions(data) >= 4)


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
