import csv
from report_generator import generate_report


def main():
    row =  get_first_row("data/data.tsv")
    generate_report(row, "data/codebook.json")


def get_first_row(path):
    with open(path, newline="") as csvfile:
        reader = csv.DictReader(csvfile, dialect="excel-tab")
        row = reader.__next__()
        return row


if __name__ == "__main__":
    main()
