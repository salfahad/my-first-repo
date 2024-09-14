##Lab 4: Pattern Matching with match
#1.Basic match Statement:
day = "Monday"

match day:
    case "Monday":
        print("Start of the work week.")
    case "Friday":
        print("Almost the weekend!")
    case _:
        print("Have a nice day!")