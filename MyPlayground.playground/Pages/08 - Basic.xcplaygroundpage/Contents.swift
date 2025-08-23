import Foundation

/**
 Funções
 */

// Fuçoes sao blocos de codigos que podem ser re-utilizados no seu projeto


func generateRandomTicketValue(number: Int) -> Set<Int> {
    var num = number;
    var result: Set<Int> = []
    
    while(num > 0){
        let randomValue = Int.random(in: 1...60)
        let setResult = result.insert(randomValue)
        
        if(setResult.inserted){
            num = num - 1
            //print(num)
        }
    }
    
    return result
}


let result = generateRandomTicketValue(number: 15)
print("Random numbers are \(result)")
print()

/**
 Switch/Case
 */
func dayOfWeek(numberDay: Int) -> String {
    var responseDay: String = "";
    switch numberDay {
    case 1:
//        return "Sunday";
        responseDay = "Sunday";
        break
    case 2:
        responseDay = "Monday";
        break
    case 3:
        responseDay = "Tuesday";
        break
    case 4:
        responseDay = "Wednesday";
        break
    case 5:
        responseDay = "Thursday";
        break
    case 6:
        responseDay = "Friday";
        break
    case 7, 8, 9, 10:
        responseDay = "Saturday";
        break
    default:
        responseDay = "Invalid day";
    }
    
    return responseDay
}

let day = dayOfWeek(numberDay: 10)
print("Today is \(day)")
