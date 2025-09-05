import Foundation

// De Struct para Class: Prog. Orientada a Objetos

// Structs sao imutaveis
struct User {
    var name: String
    
    func getName() -> String {
        return name
    }
    
    mutating func setName(newName: String){
        name = newName
    }
}

class Person {
    var name: String
    
    init(nameValue: String){
        name = nameValue
    }
    
    func getName() -> String {
        return name
    }
    
    func setName(newName: String){
        name = newName
    }
}

// Structs são imutáveis por isso aqui você esta criando uma nova referência / variável
var u1 = User(name: "Angelo")
var u2 = u1
u2.setName(newName: "Zero")

print(u1.getName()) // Isso imprime 'Angelo'
print(u2.getName()) // Isso imprime 'Zero'

print()

var p1 = Person(nameValue: "Angelo")
var p2 = p1
p2.setName(newName: "Zero")

print(p1.getName()) // Isso imprime 'Zero'
print(p2.getName()) // Isso imprime 'Zero'
