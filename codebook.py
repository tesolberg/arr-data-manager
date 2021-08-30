import json

def GenerateCodebook(codebook_path, report_labels_path=""):
    # empty dict
    data = {}
    report_labels = {}

    # Decode report labels
    if(report_labels_path != ""):
        with open(report_labels_path, encoding="utf-8") as f:
            report_labels = json.load(f)

    # åpne sps-fil fra nettskjema
    with open(codebook_path, encoding="utf-8") as f:

        # holds variable that recieves responses
        active_var = {}
        active_var_responses = {}
        active_var_label = ""         

        # loop through lines 
        for line in f:
            if(line[0] == "*" and line[1] == " "):     # top padding, skip line
                continue

            # if blank line, add active_var to data
            elif(len(line) == 1):
                if(active_var_label == ""):     # skips if no variable have been created
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
          
            # if new variable, catches new variable and sets active_var
            elif(line[0] == "*" and line[1] != " "):     # new variable
                new_var = ""
                for char in line[1:-2]:
                    if(char == "\t"):
                        break
                    else:
                        new_var += char
                # if report label path was given, add report labels
                if(report_labels_path != ""):
                    active_var = {new_var: {"var_text_report": report_labels[new_var], "responses": {}}}
                else:
                    active_var = {new_var: {"var_text_report": "empty", "responses": {}}}

                # sets name of the active variable
                active_var_label = new_var
            
            # skips lines starting with VALUE LABELS
            elif(line[0:12] == "VALUE LABELS"):
                continue

            # sets variable text
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


            # adds responses to active var
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
                
                active_var_responses[value_short] = value_long

    # write codebook to file
    with open('data/codebook.json', 'w', encoding="utf8") as json_file:
        json.dump(data, json_file, indent=2,  ensure_ascii=False)

    # write codebook with only variable labels to file
    with open('data/codebook_var_labels_clean.json', 'w', encoding="utf8") as f:
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


def main():
    GenerateCodebook("data/codebook.sps", "data/report_labels.json")


if __name__ == "__main__":
    main()
