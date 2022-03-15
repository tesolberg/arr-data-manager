import csv
import os
from datetime import date

linkKeyPath = "./koblingsnokkel/koblingsnokkel.csv"
nextCodePath = "./koblingsnokkel/neste-kode.txt"

def get_id_code(fnr):

    if not isinstance(fnr, str):
        print("Advarsel: Argument given to id_manager is: " + str(type(fnr)))
        
    fnr = str(fnr)
    if(len(fnr) < 11):
        print("Advarsel: Feil antall siffer i fnr: " + fnr + ". Legger til ledende '0'")
        fnr = "0" + fnr

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
    return str(key)

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


# print(get_id_code("02059854365"))