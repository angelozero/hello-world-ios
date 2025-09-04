import Foundation

// Propriedades e Comportamentos com Struct
struct User {
    let name: String
    let lastName: String?
    let isAdmin: Bool
    
    func getFullName() -> String {
        var validLastName = lastName ?? ""
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
