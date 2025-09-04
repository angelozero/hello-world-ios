import Foundation

// Opcional
// Simulando uma chamada a um banco de dados
func findProductById(id: Int) -> String {
    
    // Retorno do banco de dados sera um dictonary
    let resultFromDataBase = [
        1: "Banana",
        2: "Watermelon",
        3: "Limon"
    ]
    
    // Validando primeiro o caso de sucesso
    return resultFromDataBase[id] ?? "Fruit not found"
}

// Usando Guard Let
func findProductByName(name: String) -> Int {
    
    // Retorno do banco de dados sera um dictonary
    let resultFromDataBase = [
        "Banana": 10,
        "Watermelon": 20,
        "Limon": 30
    ]
    
    // Validando primeiro o caso de erro
    guard let fruit = resultFromDataBase[name] else {
        return 0;
    }
    
    return fruit;
}

let fruitNameNotFound = findProductById(id: 4)
print("Ops! \(fruitNameNotFound)")

print()
let fruitName = findProductById(id: 1)
print("The fruit is \(fruitName)")

print()
let fruitValueNotFound = findProductByName(name: "Pinaple")
print("Ops! Fruit value not found - \(fruitValueNotFound)")

print()
let fruitValue = findProductByName(name: "Banana")
print("The value is - \(fruitValue)")
