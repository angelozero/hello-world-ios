import Foundation

// Opcional
// Valores padrões
func generateRandomNumber(numA: Int?, numB: Int?, numC: Int?, numD: Int?) -> Int {
    
    // Se caso numA for nulo por padrao/default valueA recebe 10
    let valueA = numA ?? 10
    
    // Se caso numB for nulo por padrao/default valueB recebe 20
    let valueB = numB ?? 20
    
    // Forced unwraped
    let valueC = numC!
    
    // Verificando uma variavel opcional
    let auxValueD: Int
    // Se caso numD for nulo
    if let valueD = numD {
        auxValueD = valueD
    } else {
        // Por padrao/default auxValueD recebe 999
        auxValueD = 999
    }
    
    print(auxValueD)
    
    return Int.random(in: valueA...valueB)
}

// will generate 'Fatal error: Unexpectedly found nil while unwrapping an Optional value'
//let randomNumber = generateRandomNumber(numA: 10, numB: 20, numC: nil, numD: nil)

let randomNumber = generateRandomNumber(numA: 10, numB: 20, numC: 10, numD: nil)

print(randomNumber)
