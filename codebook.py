import sys
import json

def GenerateCodebook(codebook_path, report_labels_path=""):

    codebook_name = get_codebook_name(codebook_path)

    # lager en tom dict der kodeboken kan genereres
    data = {}

    # Henter inn en dict med variabelkoder og korresponderende rapporttekst hvis det er angitt en fil for dette
    report_labels = {}
    if(report_labels_path != ""):
        with open(report_labels_path, encoding="utf-8") as f:
            report_labels = json.load(f)

    # åpne spss-kodebok fra nettskjema
    with open(codebook_path, encoding="utf-8") as f:

        # en tom dict som  til enhver tid skal holde én entry, 
        # der variabelens kode er key og verdien er en dict
        active_var = {}

        # samler de mulige responsene til den aktive variabelen i par med 
        # responskode : responstekst
        active_var_responses = {}

        # holder den aktive variabelens label, hvis den finnes
        active_var_label = ""         

        # loop through lines 
        for line in f:
            if(line[0] == "*" and line[1] == " "):     # "*" + " " signaliserer header. skippes
                continue

            # hvis blank linje og en aktiv variabel holdes i minnet -> konsolideres variabelen,
            # legges inn i kodeboken og variabler nullstilles
            elif(len(line) == 1):
                if(active_var_label == ""):     # skips if no variable have been created yet
                    continue
                else:
                    # add response lables to active var dict
                    active_var[active_var_label]["responses"] = active_var_responses
                    
                    # merge active var dict to data
                    data.update(active_var)

                    # resets variables
                    active_var = {}
                    active_var_label = ""
                    active_var_responses = {}
          
            # if new variable (* etterfulgt av symbol)
            elif(line[0] == "*" and line[1] != " "):
                
                # lagrer navnet på den nye variabelen i new_var
                new_var = ""
                for char in line[1:-2]:
                    if(char == "\t"):
                        break
                    else:
                        new_var += char
                
                # hvis en fil med variabelkoder og rapporttekst ble gitt, legg inn rapporttekst.
                # Legger så til en tom dict under nøkkelen "responses"
                if(report_labels_path != ""):
                    active_var = {new_var: {"var_text_report": report_labels[new_var], "responses": {}}}
                else:
                    active_var = {new_var: {"var_text_report": "empty", "responses": {}}}

                # sets name of the active variable
                active_var_label = new_var
            
            # skips line starting with VALUE LABELS (TODO: flytte denne oppover)
            elif(line[0:12] == "VALUE LABELS"):
                continue

            # henter variabelens spørsmålstekst slik den er formulert i skjemaet
            elif(line[0:15] == "VARIABLE LABELS"):
                write = False
                var_text = ""
                for c in line:
                    if(write):
                        if(c == "'"):
                            break
                        else:
                            var_text += c
                    elif(c == "'"):
                        write = True

                active_var[active_var_label]["var_text"] = var_text


            # hvis koden kommer hit er linjen en respons. Leser av responskode og 
            # hvilken tekst responsen har i skjema.
            else:
                value_short = ""    # responskode
                value_long = ""     # respons fulltekst
                short_found = False

                for c in line[2:-1]:
                    if(c == " " and not short_found):
                        continue
                    if(c == "'"):
                        short_found = True
                        continue
                    if(not short_found):
                        value_short += c
                    elif(c != "."):
                        value_long += c
            
                # Lagrer responsen med kode som nøkkel og tekst som verdi
                active_var_responses[value_short] = value_long

    # skriver den fulle kodeboken til jsonfil
    with open('kodebok/' + codebook_name + '.json', 'w', encoding="utf8") as json_file:
        json.dump(data, json_file, indent=2,  ensure_ascii=False)

    # skriver alle variabelkodene : "" til jsonfil (som så kan fylles inn der det er ønskelig
    # at respondentens svar i rapporten prefixes med noe annet enn spørsmålsteksten 
    # fra spørreskjemaet)
    with open('kodebok/' + codebook_name + '_var_labels_clean.json', 'w', encoding="utf8") as f:
        f.write("{\n")
        
        dict_len = len(data)
        count = 0

        for key in data.keys():
            if(count < dict_len - 1):
                f.write("   \"" + key + "\": \"\",\n")
            else:
                f.write("   \"" + key + "\": \"\"\n")
            
            count += 1

        f.write("}\n")


def get_codebook_name(path):
    lastSlash = -1
    for i in range(len(path)):
        if path[i] == "/": 
            lastSlash = i

    return path[lastSlash + 1: -4]

def main():
    if len(sys.argv) > 1:
        if (sys.argv[1] == "kun-kodebok"):
            GenerateCodebook("kodebok/codebook-239360-2022-01-06.sps")
        else:
            print("Feil: Invalid argument gitt til codebook.py: " + sys.argv[1] + ". Mente du 'kun-kodebok'?")
            return
    else:
        GenerateCodebook("kodebok/SPSS-format/codebook-t2v10.sps", "kodebok/Variabelsnippets for rapportgenerator/variable_snippets_report_t2v10.json")


if __name__ == "__main__":
    main()
