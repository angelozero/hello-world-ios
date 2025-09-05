import Foundation

// Propriedades e Comportamentos com Struct

// Structs sao imutaveis
struct User {
    let name: String
    let lastName: String?
    let isAdmin: Bool
    var ranking: Int?
    
    func getFullName() -> String {
        var validLastName = lastName ?? ""
        return name + " " + validLastName
    }
    
    mutating func setRanking(newRanking: Int){
        ranking = newRanking
    }
}

var userA = User(name: "Angelo", lastName: "Zero", isAdmin: false, ranking: 10)
var userB = User(name: "Jake", lastName: nil, isAdmin: true, ranking: 20)
var userC = User(name: "Xerocks", lastName: "", isAdmin: false, ranking: 30)


var userList = [
    1: userA,
    2: userB,
    3: userC
]

var users = [
    userA,
    userB,
    userC
]

for finalUser in userList.values {
    var finalUserData = finalUser
    finalUserData.setRanking(newRanking: 100)
    print(finalUserData)
    print("The user is \(finalUserData.getFullName())")
    print()
}

print("/********/")
print()

for finalUser in users {
    print(finalUser)
    print("The user is \(finalUser.getFullName())")
    print()
}

