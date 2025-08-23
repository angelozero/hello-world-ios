import Foundation

/**
 Coleção de Dados com Dicionários
 */

// comparação entre dicionario e arrays
// Array ---> indice, sequencias

// Dictionary
// Key -----> chave
// Value ---> valor
// Estrutura desordenada

var products: [Int : String] = [
    1 : "Banana",
    2 : "Apple",
    3 : "Watermelon"
]

print(products)

// Se caso não for encontrado o valor dentro do dictionary products então NOT_FOUND sera exibido
print("The fruit is \(products[1] ?? "NOT_FOUND")")
print("The fruit is \(products[11] ?? "NOT_FOUND")")

print()
// Alterando o valor de um dict
products[3] = "Orange"
print("Watermelon now is \(products[3] ?? "NOT_FOUND")")

print()
// Excluindo o valor de dict
products[3] = nil
print(products)

print()
// Descobrindo uma chave disponivel
for i in 0...products.count {
    if(products[i + 1] == nil){
        print("The number \(i + 1) is available")
    } else {
        print("The number \(i + 1) is not available")
    }
}

print()
// Buscando todos os valores
for values in products.values {
    print(values)
}

products[3] = "Watermelon"
print()
for (key, value) in products {
    print("Key \(key) --- Value \(value)")
}
