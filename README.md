# 🚀 Olá mundo iOs
Estudo sobre swift básico

Variáveis e Constantes
----------------------

Uma variável é um espaço na memória do computador que pode armazenar um valor e ser alterada a qualquer momento, usando a palavra-chave **`var`**. Já uma constante armazena um valor que não pode ser alterado após ser criado, usando a palavra-chave **`let`**.

### Código de Exemplo

Swift

```swift
// Declaring a mutable variable -> 'var'
var message = "This is a text"
print(message)

message = "Now a new text!"
print(message)

// Declaring a constant variable -> 'let'
let fullName = "Angelo Zero"
print(fullName)

// This does not work, 'let' is a constant and cannot be changed after creation
// fullName = "Jake the Dog"
// print(fullName)

let pi = 3.14
print(pi)

```

* * * * *

Tipos de Dados
--------------

Em Swift, cada variável ou constante tem um tipo de dado específico que define o tipo de valor que ela pode armazenar, como números inteiros (**`Int`**), números decimais (**`Double`**), texto (**`String`**) e valores lógicos (**`Bool`**).

### Código de Exemplo

Swift

```swift
// Integer
let number: Int = 1
print(number)

// Decimal numbers
let decimalNumber: Double = 3.14
print(decimalNumber)

// Text
var text: String = "a, b, c, d, e, ... y, z"
print(text)

// Boolean
var isHuman: Bool = true
print(isHuman)

```

* * * * *

Conversão de Tipos de Dados
---------------------------

A conversão de tipos de dados, ou "type casting," é o processo de mudar uma variável de um tipo para outro. Por exemplo, você pode converter um número inteiro para uma string ou vice-versa.

### Código de Exemplo

Swift

```swift
let number: Int = 10
let numberAsString: String = String(number)
print("The text is " + numberAsString)

let textValue: String = "10"
let value: Int = Int(textValue) ?? 0
print("The value is \(value)")

```

-   **Exemplo de exercícios:**

Swift

```swift
// 1. Convert a String to a Boolean
let booleanValue: Bool = Bool("true") ?? false
print("Exercise 1 answer: \(booleanValue)")

// 2. Convert a Double to an Int
let doubleValue: Double = 20.1
let intValue: Int = Int(doubleValue)
print("Exercise 2 answer: \(intValue)")

```

* * * * *

Operadores Lógicos
------------------

Operadores lógicos são usados para combinar ou manipular expressões booleanas (verdadeiro ou falso). Eles incluem **`==`** (igual a), **`!=`** (diferente de), **`>`** (maior que), **`&&`** (E) e **`||`** (OU).

### Código de Exemplo

Swift

```swift
let isLow = 2 > 3
print(isLow)

let isHigh = 10 < 2
print(isHigh)

let isEqual = 10 == 10
print(isEqual)

let firstName = "Jake"
let secondName = "Fluffy"
let namesAreEqual = firstName == secondName
print("Names are equal? \(namesAreEqual)")

let age = 35
let canDrive = age >= 18
print("Can you drive? \(canDrive)")

let cannotDrive = !canDrive
print("Can't you drive? \(cannotDrive)")

let isDriverOrIsSeventeenPlus = canDrive || age >= 17
print("Is a driver or is 17 or older? \(isDriverOrIsSeventeenPlus)")

let isDriverAndIsThirtyPlus = canDrive && age >= 30
print("Is a driver and is 30 or older? \(isDriverAndIsThirtyPlus)")

```

* * * * *

Coleções de Dados
-----------------

As coleções de dados permitem agrupar múltiplos valores em uma única estrutura. As mais comuns são **Tuplas** e **Arrays**. As tuplas agrupam valores de tipos diferentes, enquanto os arrays armazenam uma lista ordenada de valores do mesmo tipo.

### Código de Exemplo

Swift

```swift
// Tuples
let coords = (lat: 22.0, lon: 10.1)
print("First position: \(coords.lat)")
print("Second position: \(coords.lon)")

let camera = (x: 10, y: 20, z: 30)
let (x, y, z) = camera
print(x, y, z)

// Arrays
var nameList: [String] = ["Angelo", "Jake", "Zero"]
print(nameList)

nameList.append("Fluffy")
print(nameList)

var otherNameList: [String] = ["Ronald", "Tiny"]
nameList += otherNameList

print(nameList)

let firstName = nameList[0]
print("The first name is \(firstName)")

let newListName = Array(nameList[2...4])
print("This is the new list \(newListName)")
print("Is the new list empty? \(newListName.isEmpty)")
print("What size does the list have? \(newListName.count)")
print("Does the list contain the name Angelo? \(newListName.contains("Angelo"))")

```

* * * * *

Estruturas de Repetição: `While` e `Repeat-While`
-------------------------------------------------

Os loops `while` e `repeat-while` são usados para executar um bloco de código repetidamente enquanto uma condição for verdadeira. O `while` verifica a condição antes de executar o código, enquanto o `repeat-while` executa o código pelo menos uma vez antes de verificar a condição.

### Código de Exemplo

Swift

```swift
// while loop
var number = 0
while number < 10 {
    number += 1
    print(number)
}

// repeat-while loop
var value = 0
repeat {
    print(value)
    value += 1
} while (value < 10)

```

* * * * *

Loops `for`, `Range` e `where`
------------------------------

O loop `for` é usado para iterar sobre uma sequência de valores, como um array ou um intervalo de números. Você pode usar a palavra-chave `where` para adicionar uma condição extra ao seu loop.

### Código de Exemplo

Swift

```swift
// Range
let inclusiveRange = 0...5 // includes 5
let exclusiveRange = 0..<5 // does not include 5

// For loop
var sum = 0
var count = 10

for i in 0...count {
    sum += i
    print(sum)
}

let namesList = ["Angelo", "Jake", "Zero"]
for name in namesList {
    print(name)
}

// For loop with 'where' clause
for number in 1...10 where number % 3 == 0 {
    print("The number \(number) is divisible by 3.")
}
```
