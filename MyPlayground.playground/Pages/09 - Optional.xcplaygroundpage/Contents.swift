import Foundation

// Variaveis Opcionais

// Declaramos como optional em frente ao tipo "String?" aqueles valores que podem ou não ter dados dentro

var myName: String = "Angelo"

func sayHello(name: String?){
    //Para garantir que vamos recuperar o valor da maneira correta fazemos a remoção de dentro do Optional o valor
    if let nameValue = name {
        print("Hello \(nameValue)")
    } else {
        print("Hello user")
    }
}

sayHello(name: myName)


// Exemplo com uma tupla
var user: (name: String, cpf: String, age: Int?)
user.name = "Angelo"
user.cpf = "123.123.123-12"
user.age = nil

print(user)

