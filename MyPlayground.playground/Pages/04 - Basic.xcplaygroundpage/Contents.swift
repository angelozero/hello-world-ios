import UIKit

/**
 For. Range. Where e Mod
 */

print()
// range
// inclusivo
let range = 0...5

// exclusivo
let newRange = 0..<5

var limit = 5


// loop for

var sum = 0
var count = 10

for i in 0...count {
    sum += i
    print(sum)
}

print()
let namesList = ["Angelo", "Jake", "Zero"]
for i in 0...namesList.count {
    if(i < namesList.count){
        print(namesList[i])
    }
}

print()
/**
 em java
 for (int i = 0; i < namesList.size(); i++) {
     System.out.println(namesList.get(i));
 }
 */
for i in 0...namesList.count where i < namesList.count {
    print(namesList[i])
}

// mod
for numero in 1...10 where numero % 3 == 0{
    if numero % 3 == 0 {
        print("O número \(numero) é divisível por 3.")
//    } else {
//        print("O número é \(numero).")
//    }
}


