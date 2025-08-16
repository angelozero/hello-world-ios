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
