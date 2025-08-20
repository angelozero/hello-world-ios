import UIKit

/**
 Coleções de Dados
 */

// Tupla
//let coords: (Double, Double) = (22.0, 10.1)
print()
let coords = (lat: 22.0, lon: 10.1)
print("First position \(coords.lat)")
print("Second position \(coords.lon)")

let camera = (x: 10, y: 20, z: 30)
let (x, y, z) = camera;
print(x)
print(y)
print(z)

// Arrays
print()
//let nameList: [String] = ["Angelo", "Jake", "Zero"]
var nameList: [String] = ["Angelo", "Jake", "Zero"]
print(nameList)

nameList.append("Floquinho")
print(nameList)

var otherNameList: [String] = ["Ronildo", "Pinguinho"]
nameList += otherNameList

print(nameList)

// recuperando o primeiro nome
let firstName = nameList[0]
print("the first name is \(firstName)")

// recuperando um range de nomes 'slice an array'
// firstThreeNames é uma referencia para os 3 primeiros nomes e nao um novo array!!
let firstThreeNames = nameList[0...2];
print("the first three names are \(firstThreeNames)")

// para criar um novo array
let newListName = Array(nameList[2...4])
print("this is the new list \(newListName)")
print("is the new list is empty ? \(newListName.isEmpty)")
print("wich size the list has ? \(newListName.count)")
print("is the list has Angelo name ? \(newListName.contains("Angelo"))")
