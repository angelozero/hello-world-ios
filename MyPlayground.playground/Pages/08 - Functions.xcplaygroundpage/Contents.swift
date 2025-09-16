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

// Metodo tradicional
print()
func getFullName1(firstName: String, lastName: String) -> String {
    return firstName + " " + lastName
}

let fullName1 = getFullName1(firstName: "Angelo", lastName: "Zero")
print(fullName1)


// Metodo com valores default no parametro
print()
func getFullName2(firstName: String, lastName: String = "Default") -> String {
    return firstName + " " + lastName
}

let fullName2 = getFullName2(firstName: "Angelo")
print(fullName2)


// Metodo sem passar o nome dos parametros/argumentos
print()
func getFullName3(_ firstName: String, _ lastName: String) -> String {
    return firstName + " " + lastName
}

let fullName3 = getFullName3("Angelo", "Zero")
print(fullName3)


// Metodo dadndo nome para o argumento/parametro
print()
func getFullName4(name firstName: String, _ lastName: String) -> String {
    return firstName + " " + lastName
}

let fullName4 = getFullName4(name: "Angelo", "Final Zero")
print(fullName4)
