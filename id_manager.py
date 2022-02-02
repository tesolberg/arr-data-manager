import csv
import os
from datetime import date

linkKeyPath = "/koblingsnøkkel/koblingsnøkkel.csv"
nextCodePath = "koblingsnøkkel/neste-kode.txt"

def get_id_code(fnr):

    # åpne fil og sjekk for eksisterende oppføring -> returner oppføring
    with open(linkKeyPath, newline="") as csvfile:
        reader = csv.DictReader(csvfile)
        
        for row in reader:
            if row["fnr"] == fnr:
                # print("Fant match for fnr: " + row["kode"])
                return row["kode"]

    # fant ikke oppføring -> legg inn ny    
    key = get_next_code()
    today = date.today()
    s = "\n" + fnr + "," + str(key) + "," + today.strftime("%d/%m/%Y")
    f = open(linkKeyPath, "a")
    f.write(s)
    return key

def get_next_code():
    
    nextCode = 0
    
    with open(nextCodePath, newline="") as f:
        nextCode = int(f.readline()) + 1

    f = open(nextCodePath, "w")
    f.write(str(nextCode))
    f.close()
    
    return nextCode


def id_to_fnr(id):    
        
    with open(linkKeyPath, newline="") as csvfile:
        reader = csv.DictReader(csvfile)
    
        for row in reader:
            if row["kode"] == id:
                return row["fnr"]
        
        print("Fant ingen oppføring med id-kode: " + id)