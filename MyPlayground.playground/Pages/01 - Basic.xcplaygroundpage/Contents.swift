import UIKit

/**
 Criação de variáveis
 */

var name = "Angelo"
print(name)

//Declarando uma variável mutável ---> 'var'
var message = "Isso é um texto"
print(message)

message = "Agora um novo texto!"
print(message)

// Declarando uma variável constante ---> 'let'
let fullName = "Angelo Zero"
print(fullName)

/*
 Isso não funciona, let é constante e não pode ser alterado após ser criado
 Cannot assign to value: 'name' is a 'let' constant
 name = "Jake o Cao"
 print(name)
 */

let pi = 3.14
print(pi)


print()
/**
 Declarando variáveis com seu tipos de dado
 */

// Numeros inteiro
let int: Int = 1
print(int)

// Numeros com casas decimais
let double: Double = 3.14
print(double)

// Texto
var text: String = "a, b, c, d, e, ... y, z"
print(text)

// Lógico
var isHuman: Bool = true
print(isHuman)


print()

/**
 Convertendo tipos de dados
 */

let num: Int = 10
let numName: String = String(num)
print("O texto é " + numName)

let textValue: String = "10"
let value: Int = Int(textValue) ?? 0
print("O valor é \(value)")

print()

/**
 1. Criar um programa para converter em Boolean uma String no formato "true". 
 Ou seja, na saída precisamos ter um tipo Boolean a partir de uma String​.

 2. Criar um programa para converter um número decimal (20.1) em um número inteiro, isto é, número que não aceita casas decimais. 
 Dica: lembrando que números inteiros são do tipo Int e números decimais são do tipo Double.
 */

// 1
let booleanValue: Bool = Bool("true") ?? false
print("Resposta exercicio 1 ---> \(booleanValue)")

// 2
let piValue: Double = 3.14
let intNumber: Int = Int(piValue)
print("Resposta exercicio 2 ---> \(intNumber)")


/**
 Operadores Lógicos
 */
print()

let low = 2 > 3
print(low)

let high = 10 < 2
print(high)

let equal = 10 == 10
print(equal)

// Temos como operadores lógicos
// == --- igual
// != --- diferente
// < ---- menor
// <= --- menor ou igual
// > ---- maior
// >= --- maior ou igual
// ! ---- inversão
// && --- e
// || --- ou

print(!equal || low != high)

/**
 Criar um programa que deverá comparar a igualdade de duas Strings. Ou seja, a string A é igual a string B?
 Crie uma variável que armazene a sua idade e verifique se, com a idade informada, pode-se dirigir (regra para CNH → +18 anos pode dirigir)
 Inverta a lógica, ou seja, verifique se a idade informada NÃO pode dirigir
 Verifique se é um motorista OU se ele tem 17 anos ou mais
 Verifique se é um motorista E se ele tem 30 anos ou mais
 */
print()
let firstName = "Jake"
let secondName = "Floquinho"
let equalsName = firstName == secondName
let age = 35
let canDrive = 35 > 18
print("Can you drive ? \(canDrive)")
print("Can't you drive ? \(!canDrive)")
let isDriver = canDrive || age > 17
print("Is a driver ? \(!canDrive)")
let isOldDriver = isDriver && age > 30
print("Is old Driver ? \(!canDrive)")


/**
 Condições
 */
print()
let isHungry = false
let isThirsty = true
var isOk = false;

if isHungry {
    print("I'm hungry")
} else if isThirsty {
    print("I'm thirsty")
} else {
    print("I'm ok")
}

let fruit = "banana"
let vegetable = "potato"
let isHealthyFood = fruit == "banana" && vegetable == "potato" ? "It's healthy food" : "its not healthy food"
print(isHealthyFood)
