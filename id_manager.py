import csv
import os

def get_id_code(fnr):
    
    p = get_path_to_keys() + "/koblingsnokkel.csv"

    # åpne fil og sjekk for eksisterende oppføring -> returner oppføring
    with open(p, newline="") as csvfile:
        reader = csv.DictReader(csvfile)
        
        for row in reader:
            if row["fnr"] == fnr:
                # print("Fant match for fnr: " + row["kode"])
                return row["kode"]

    # fant ikke oppføring -> legg inn ny    
    key = get_next_code()
    s = "\n" + fnr + "," + str(key)
    f = open(p, "a")
    f.write(s)
    return key

def get_next_code():
    
    p = get_path_to_keys() + "/neste-kode.txt"

    nextCode = 0
    
    with open(p, newline="") as f:
        nextCode = int(f.readline()) + 1

    f = open(p, "w")
    f.write(str(nextCode))
    f.close()
    
    return nextCode


def id_to_fnr(id):    
    
    p = get_path_to_keys() + "/koblingsnokkel.csv"
    
    with open(p, newline="") as csvfile:
        reader = csv.DictReader(csvfile)
    
        for row in reader:
            if row["kode"] == id:
                return row["fnr"]
        
        print("Fant ingen oppføring med id-kode: " + id)


def get_path_to_keys():
    path_arr = os.path.dirname(os.getcwd())
    return path_arr + "/koblingsnokkel/"
