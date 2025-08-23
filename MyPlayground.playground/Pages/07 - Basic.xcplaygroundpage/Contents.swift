import Foundation

/**
 Coleção de Dados com Sets
 */


// Trabalhando com dados unicos
var newDict: [Int:String] = [:]
var newArray: [String] = []
var newSet: Set<Int> = []

newSet.insert(10)
newSet.insert(3)
newSet.insert(10)

// não sera repetido o valor 10
print(newSet)

print()
let response = newSet.insert(4)
print("The value was inserted ? \(response.inserted ? "Yes" : "No")")

print()
print("The number 3 contains in newSet ? \(newSet.contains(3) ? "Yes": "No" )")
