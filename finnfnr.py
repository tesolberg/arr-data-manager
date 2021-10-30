import id_manager


while(True):
    s = input("Skriv inn respondent-ID (eller \"q\" for å avslutte): ")
    if s.upper() == "Q":
        break
    else:
        print(id_manager.id_to_fnr(s))