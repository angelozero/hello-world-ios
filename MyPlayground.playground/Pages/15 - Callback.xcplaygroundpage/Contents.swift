import Foundation

// Function Types: Resolvendo Problemas com Programação Funcional

// Método simples
func sum(x: Int, y: Int) -> Int {
    return x + y
}

func sub(x: Int, y: Int) -> Int {
    return x - y
}

// Método utilizando funções como parâmetros
// Parâmetro ----- operation: (Int, Int) -> Int
// 'operation' --- nome do parâmetro/função
// '(Int, Int)' -- parâmetros dessa função
// '-> Int' ------ tipo do retorno de operation
func calc(x: Int, y: Int, operation: (Int, Int) -> Int ) -> Int {
    return operation(x, y)
}

var result1 = calc(x: 10, y: 2, operation: sum);
print(result1)


// Um outro meio de se realizar a mesma função
var result2 = calc(x: 10, y: 2, operation: {x, y in x * y});
print(result2)


// Utilizando callback

func callServer(url: String, callback: (Int) -> ()){
    // Simulando uma chamada que retornou status 200
    let code = 200
    callback(code)
}

print()
callServer(url: "http://meu-site.com", callback: {
    code in
    if(code == 200 ){
        print("Chamada realizada com sucesso")
    } else {
        print("Falha na chamada")
    }
})
