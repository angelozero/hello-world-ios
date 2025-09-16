import Foundation

// Revisão -> Struct vs. Class e suas Diferenças

// Struct e Class são baseados em OOP (Object Oriented Programming)

// Struct tem o inicializador padrão
// Struct -> value type
// Struct -> imutavel
struct UserStruct {
    let name: String
    var lastName: String
    
    mutating func
    setLastName(lastNameValue: String){
        lastName = lastNameValue
    }
}

// Class precisa do método init
// Class -> reference type
class UserClass {
    let name: String
    var lastName: String
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
    
    func setLastName(lastNameValue: String){
        lastName = lastNameValue
    }
}

var userStruct = UserStruct(name: "Angelo - 1", lastName: "Zero - 1")
var userClass = UserClass(name: "Angelo - 2", lastName: "Zero - 2")

// Imprime o valor
print("Type Value -------> \(userStruct)")

// Imprime a referencia
print("Type Reference ---> \(userClass)")

print()
print(userStruct.name + " " + userStruct.lastName)
print(userClass.name + " " + userClass.lastName)


userStruct.setLastName(lastNameValue: "Test Struct")
userClass.setLastName(lastNameValue: "Test Class")

print()
print(userStruct.name + " " + userStruct.lastName)
print(userClass.name + " " + userClass.lastName)


