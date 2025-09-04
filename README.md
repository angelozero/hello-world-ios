# 🚀 Olá mundo iOs
Estudo sobre swift básico

### Variáveis e Constantes

Uma variável é um espaço na memória do computador que pode armazenar um valor e ser alterada a qualquer momento, usando a palavra-chave **`var`**. Já uma constante armazena um valor que não pode ser alterado após ser criado, usando a palavra-chave **`let`**.

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

### Tipos de Dados

Em Swift, cada variável ou constante tem um tipo de dado específico que define o tipo de valor que ela pode armazenar, como números inteiros (**`Int`**), números decimais (**`Double`**), texto (**`String`**) e valores lógicos (**`Bool`**).

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

### Conversão de Tipos de Dados

A conversão de tipos de dados, ou "type casting," é o processo de mudar uma variável de um tipo para outro. Por exemplo, você pode converter um número inteiro para uma string ou vice-versa.

```swift
let number: Int = 10
let numberAsString: String = String(number)
print("The text is " + numberAsString)

let textValue: String = "10"
let value: Int = Int(textValue) ?? 0
print("The value is \(value)")

```

-   **Exemplo de exercícios:**

```swift
// 1. Convert a String to a Boolean
let booleanValue: Bool = Bool("true") ?? false
print("Exercise 1 answer: \(booleanValue)")

// 2. Convert a Double to an Int
let doubleValue: Double = 20.1
let intValue: Int = Int(doubleValue)
print("Exercise 2 answer: \(intValue)")

```

### Operadores Lógicos

Operadores lógicos são usados para combinar ou manipular expressões booleanas (verdadeiro ou falso). Eles incluem **`==`** (igual a), **`!=`** (diferente de), **`>`** (maior que), **`&&`** (E) e **`||`** (OU).

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

### Coleções de Dados

As coleções de dados permitem agrupar múltiplos valores em uma única estrutura. As mais comuns são **Tuplas** e **Arrays**. As tuplas agrupam valores de tipos diferentes, enquanto os arrays armazenam uma lista ordenada de valores do mesmo tipo.

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

### Estruturas de Repetição: `While` e `Repeat-While`

Os loops `while` e `repeat-while` são usados para executar um bloco de código repetidamente enquanto uma condição for verdadeira. O `while` verifica a condição antes de executar o código, enquanto o `repeat-while` executa o código pelo menos uma vez antes de verificar a condição.

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

### Loops `for`, `Range` e `where`

O loop `for` é usado para iterar sobre uma sequência de valores, como um array ou um intervalo de números. Você pode usar a palavra-chave `where` para adicionar uma condição extra ao seu loop.

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

### Iteração em Coleções

O `for-in` loop no Swift é uma maneira poderosa e flexível de iterar sobre sequências, como arrays. Você pode usar um range (ex: `0..<dollars.count`) para percorrer os índices de um array ou simplesmente iterar sobre os elementos diretamente.

O loop `for-in` também pode ser usado com a cláusula `where` para filtrar elementos com base em uma condição. Além disso, as palavras-chave `break` e `continue` dão mais controle ao fluxo do loop: `break` encerra o loop completamente, enquanto `continue` pula para a próxima iteração.

```swift
import UIKit

let dollars = [5.1, 5.2, 4.9, 4.32, 5.43, 5.11]
let days = ["01/02", "02/02", "03/02", "04/02", "05/02", "06/02"]

// Iterando sobre os índices
for i in 0..<dollars.count {
    print("position \(i + 1) --- dollar \(dollars[i]) --- day \(days[i])")
}

print()

// Iterando e filtrando com a cláusula 'where'
for i in 0..<dollars.count where dollars[i] < 5 {
    print("position \(i + 1) --- dollar \(dollars[i]) --- day \(days[i])")
}

print()

// Usando 'break' para parar o loop
for day in days {
    if day == "04/02" {
        break
    }
    print(day)
}

print()

// Usando 'continue' para pular uma iteração
for day in days {
    if day == "04/02" {
        continue
    }
    print(day)
}
```

### Coleções de Dados: Dicionários

Os **dicionários** são coleções desordenadas que armazenam associações entre uma **chave** (`key`) e um **valor** (`value`). Eles são ideais para acessar dados rapidamente usando uma chave, em vez de um índice numérico.

Você pode criar um dicionário, acessar valores usando a chave, alterar valores, e até mesmo remover uma associação, definindo o valor para `nil`.

```swift
import UIKit

// Comparando Dicionário e Array
// Array -> índice, sequência
// Dicionário -> Chave, valor, estrutura desordenada

var products: [Int : String] = [
    1 : "Banana",
    2 : "Apple",
    3 : "Watermelon"
]

print(products)

// Acessando um valor. O '?? "NOT_FOUND"' fornece um valor padrão caso a chave não seja encontrada.
print("The fruit is \(products[1] ?? "NOT_FOUND")")
print("The fruit is \(products[11] ?? "NOT_FOUND")")

print()

// Alterando um valor
products[3] = "Orange"
print("Watermelon now is \(products[3] ?? "NOT_FOUND")")

print()

// Excluindo um valor
products[3] = nil
print(products)

print()

// Buscando todas as chaves e valores
products[3] = "Watermelon"
for (key, value) in products {
    print("Key \(key) --- Value \(value)")
}
```

### Coleções de Dados: Sets

Os **Sets** são coleções que armazenam valores únicos do mesmo tipo. Eles são eficientes para verificar a existência de um item e garantem que não haja duplicatas.

Você pode inserir elementos em um `Set` e usar o método `.contains()` para verificar se um valor já existe. Se você tentar inserir um valor que já está no `Set`, a operação simplesmente não terá efeito.

```swift
import UIKit

// Trabalhando com dados únicos
var newSet: Set<Int> = []

newSet.insert(10)
newSet.insert(3)
newSet.insert(10) // Este valor não será inserido, pois já existe

print(newSet)

print()

// Verificando se a inserção foi bem-sucedida
let response = newSet.insert(4)
print("The value was inserted ? \(response.inserted ? "Yes" : "No")")

print()

// Verificando se um valor está contido no Set
print("The number 3 contains in newSet ? \(newSet.contains(3) ? "Yes": "No" )")
```

Aqui está o documento **`README.md`** com base no trecho de código que você forneceu. O documento segue o mesmo formato de título, explicação em português e código em inglês com as devidas correções.

### Funções

Funções são blocos de código reutilizáveis que podem ser chamados em seu projeto para realizar uma tarefa específica. Elas podem receber valores de entrada (parâmetros) e retornar um valor de saída.


```swift
// Functions are blocks of code that can be reused in your project.
func generateRandomTicketNumbers(count: Int) -> Set<Int> {
    var numbersToGenerate = count
    var generatedNumbers: Set<Int> = []
    
    while(numbersToGenerate > 0){
        let randomNumber = Int.random(in: 1...60)
        let insertionResult = generatedNumbers.insert(randomNumber)
        
        if(insertionResult.inserted){
            numbersToGenerate -= 1
        }
    }
    
    return generatedNumbers
}

let lotteryNumbers = generateRandomTicketNumbers(count: 15)
print("The random numbers are: \(lotteryNumbers)")
```

### A função `Switch` / `Case`

A instrução **`switch`** compara um valor com vários possíveis padrões. Ela é uma alternativa mais limpa e eficiente para múltiplas instruções **`if-else if-else`** quando você precisa verificar um único valor contra vários casos.

```swift
func dayOfWeek(dayNumber: Int) -> String {
    var dayName: String = ""
    switch dayNumber {
    case 1:
        dayName = "Sunday"
    case 2:
        dayName = "Monday"
    case 3:
        dayName = "Tuesday"
    case 4:
        dayName = "Wednesday"
    case 5:
        dayName = "Thursday"
    case 6:
        dayName = "Friday"
    case 7, 8, 9, 10:
        dayName = "Saturday"
    default:
        dayName = "Invalid day"
    }
    
    return dayName
}

let day = dayOfWeek(dayNumber: 10)
print("Today is \(day)")
```

-----

### Variáveis Opcionais

Variáveis **opcionais** são usadas para lidar com valores que podem estar ausentes. Elas são declaradas com um ponto de interrogação `?` após o tipo, indicando que a variável pode conter um valor ou ser `nil`. Para acessar o valor, você deve "desembrulhar" (unwrap) a variável opcional de forma segura, como com a instrução `if let`.

```swift
import Foundation

// Optional Variables

// We declare values that may or may not contain data with a '?' in front of the type.
var myName: String? = "Angelo"

func sayHello(name: String?){
    // To ensure we retrieve the value correctly, we safely unwrap the optional value.
    if let nameValue = name {
        print("Hello \(nameValue)")
    } else {
        print("Hello user")
    }
}

sayHello(name: myName)
print()

// Example with a tuple
var user: (name: String, cpf: String, age: Int?)
user.name = "Angelo"
user.cpf = "123.123.123-12"
user.age = nil

print(user)
```

-----

### Valores Padrões

Em Swift, você pode definir um valor padrão para uma variável opcional usando o operador de coalescência nula `??`. Se a variável opcional contiver um valor, ele será usado. Caso contrário, o valor padrão que você forneceu será atribuído.

```swift
import Foundation

// Optional
// Default Values
func generateRandomNumber(numA: Int?, numB: Int?, numC: Int?, numD: Int?) -> Int {
    
    // If numA is nil, valueA receives 10 by default.
    let valueA = numA ?? 10
    
    // If numB is nil, valueB receives 20 by default.
    let valueB = numB ?? 20
    
    // Forced unwraping
    let valueC = numC!
    
    // Checking an optional variable
    let auxValueD: Int
    // If numD is nil
    if let valueD = numD {
        auxValueD = valueD
    } else {
        // By default, auxValueD receives 999.
        auxValueD = 999
    }
    
    print(auxValueD)
    
    return Int.random(in: valueA...valueB)
}

// will generate 'Fatal error: Unexpectedly found nil while unwrapping an Optional value'
//let randomNumber = generateRandomNumber(numA: 10, numB: 20, numC: nil, numD: nil)

let randomNumber = generateRandomNumber(numA: 10, numB: 20, numC: 10, numD: nil)

print(randomNumber)
```

-----

### Desembrulhando Opcionais de Forma Segura

Ao trabalhar com opcionais, é crucial garantir que você acesse seus valores de forma segura para evitar erros. O `guard let` é uma forma poderosa de fazer isso. Ele verifica se um opcional tem um valor e, se tiver, o atribui a uma constante, permitindo que o código continue a ser executado. Se o opcional for `nil`, o bloco `else` é executado, geralmente com um `return` para sair da função, garantindo que o resto do código só seja executado se o valor estiver presente.

```swift
import Foundation

// Optional
// Simulating a database call
func findProductById(id: Int) -> String {
    
    // The database return will be a dictionary
    let resultFromDataBase = [
        1: "Banana",
        2: "Watermelon",
        3: "Limon"
    ]
    
    // First, validate the success case
    return resultFromDataBase[id] ?? "Fruit not found"
}

// Using Guard Let
func findProductByName(name: String) -> Int {
    
    // The database return will be a dictionary
    let resultFromDataBase = [
        "Banana": 10,
        "Watermelon": 20,
        "Limon": 30
    ]
    
    // First, validate the error case
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
```

### Propriedades e Comportamentos com Structs

Uma **`struct`** (abreviação de *structure*) é um tipo de valor em Swift que agrupa propriedades (variáveis e constantes) e comportamentos (funções) em uma única estrutura. Elas são ideais para criar modelos de dados simples e leves.

Neste exemplo, a `struct User` define um modelo para um usuário com as propriedades `name`, `lastName` e `isAdmin`. A função `getFullName()` é um comportamento que retorna o nome completo do usuário, lidando com o fato de que o `lastName` é opcional.

-----

### Exemplo de Uso com `Dictionary` e `Array`

O código demonstra como criar instâncias da `struct User` e armazená-las em diferentes tipos de coleções, como um dicionário e um array.

1.  **`userList` (Dicionário)**: Mapeia um ID (`Int`) para um objeto `User`. O loop `for` itera sobre os **valores** do dicionário, imprimindo cada usuário e seu nome completo.
2.  **`users` (Array)**: Uma lista simples de objetos `User`. O segundo loop `for` itera diretamente sobre os elementos do array, exibindo as mesmas informações.

Ambos os exemplos mostram a versatilidade de usar `structs` para modelar dados e as propriedades de coleções para acessar e manipular essas informações.

```swift
import Foundation

// Properties and Behaviors with Struct
struct User {
    let name: String
    let lastName: String?
    let isAdmin: Bool
    
    func getFullName() -> String {
        let validLastName = lastName ?? ""
        return name + " " + validLastName
    }
}

let userA = User(name: "Angelo", lastName: "Zero", isAdmin: false)
let userB = User(name: "Jake", lastName: nil, isAdmin: true)
let userC = User(name: "Xerocks", lastName: "", isAdmin: false)

let userList = [
    1: userA,
    2: userB,
    3: userC
]

let users = [
    userA,
    userB,
    userC
]

for finalUser in userList.values {
    print(finalUser)
    print("The user is \(finalUser.getFullName())")
    print()
}

print("/********/")
print()

for finalUser in users {
    print(finalUser)
    print("The user is \(finalUser.getFullName())")
    print()
}
```