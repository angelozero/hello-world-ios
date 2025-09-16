import Foundation

/**
 1. Crie um programa que contenha uma calculadora recebendo somente um único número e um operador (function type). As operações que devem ser feitas são:
 a. numero ao quadrado (ex.: 4 ao quadrado é 16)
 b. o dobro do número (ex.: o dobro de 4 é 8)
 */

func squared(number: Int) -> Int {
    return number * number
}

func doubleValue(number: Int) -> Int {
    return number * 2
}

func calcValues(number: Int, callback: (Int) -> Int) -> Int {
    return callback(number)
}

var squaredResponse = calcValues(number: 10, callback: squared)
var doubleResponse = calcValues(number: 10, callback: doubleValue)

print(squaredResponse)
print(doubleResponse)
