import json

def main():
    LoadJson()


def LoadJson():
    # Decode report labels
    
    with open("report_labels.json", encoding="utf-8") as f:
        report_labels = json.load(f)

    print(report_labels)

if __name__ == "__main__":
    main()
