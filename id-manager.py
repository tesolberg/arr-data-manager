import csv

def get_id_code(fnr):
    
    # åpne fil og sjekk for eksisterende oppføring -> returner oppføring
    with open("koblingsnokkel/koblingsnokkel.csv", newline="") as csvfile:
        reader = csv.DictReader(csvfile)
        
        for row in reader:
            if row["fnr"] == fnr:
                # print("Fant match for fnr: " + row["kode"])
                return row["kode"]

    # fant ikke oppføring -> legg inn ny    
    key = get_next_code()
    s = "\n" + fnr + "," + str(key)
    f = open("koblingsnokkel/koblingsnokkel.csv", "a")
    f.write(s)
    return key

def get_next_code():
    
    nextCode = 0
    
    with open("koblingsnokkel/neste-kode.txt", newline="") as f:
        nextCode = int(f.readline()) + 1

    f = open("koblingsnokkel/neste-kode.txt", "w")
    f.write(str(nextCode))
    f.close()
    
    return nextCode


def id_to_fnr(id):    
    
    with open("koblingsnokkel/koblingsnokkel.csv", newline="") as csvfile:
        reader = csv.DictReader(csvfile)
    
        for row in reader:
            if row["kode"] == id:
                return row["fnr"]
        
        print("Fant ingen oppføring med id-kode: " + id)
