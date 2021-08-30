import json
import random

def main():
    # LoadJson()

    deviation = 0
    sumOfAll = 0

    for i in range(1000):
        c = 0
        
        zero = 0
        one = 0
        
        while c < 10000:
            if random.randint(0,9) < 1:
                zero = zero + 1
            else:
                one = one + 1
            
            c = c + 1
        
        print("Flipped bits: " + str(zero))
        
        deviation = deviation + abs(1000 - zero)
        sumOfAll = sumOfAll + zero

    print(deviation / 1000)
    print(sumOfAll / 1000)



def LoadJson():
    # Decode report labels
    
    with open("report_labels.json", encoding="utf-8") as f:
        report_labels = json.load(f)

    print(report_labels)

if __name__ == "__main__":
    main()
