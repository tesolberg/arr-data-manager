import json



def GenerateCodebook(codebook_path):

    # åpne codebook fra nettskjema #TODO: bytte fra json til vanlig txt
    with open(codebook_path, encoding="utf-8") as json_file:
        data = json.load(json_file)
    
    # les en og en linje
    print(data)


    # bygg dict av hele kodeboka
    # skriv den til fil i json format






def main():
    GenerateCodebook("codebook.txt")

if __name__ == "__main__":
    main()
