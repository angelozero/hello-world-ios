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

