import pandas as pd
import configparser
import id_manager
import os

# Henter besvarelse fra fil, fjerner fnr, legger inn respondetID og overfører data til gitt csv-fil
def scrub_and_transfer(submission):
    
    config = configparser.ConfigParser()
    config.read('config.ini')

    # les inn submission
    data = pd.read_csv(submission, sep="\t")

    # legger inn respondentID
    fnr = str(data.iloc[0]["fnr"])
    respondentID = id_manager.get_id_code(fnr)
    data.insert(1, "respondentId", respondentID)

    # fjerner fnr
    data.at[0,"fnr"] = "---"

    # sjekket at register finnes. Hvis det ikke gjør det -> lag nytt register baset på besvarelse
    regPath = config["paths"]["t0registrypath"] # TODO: sjekk på rett register opp mot formId
    if(not os.path.isfile(regPath)):
        print("Registry not found. Creating new registrey based on submission.")
        data.to_csv(regPath, sep="\t", index=False)
    else:
        registry = pd.read_csv(regPath, sep="\t")
        updatedReg = pd.concat([registry, data])
        updatedReg.to_csv(regPath, sep="\t", index=False)

    # hvis produksjon -> slett submission-fil
    # if not config.getboolean('general', 'devmode'):
        

scrub_and_transfer("test-files/decrypted-data/testbesvarelse-1.csv")
