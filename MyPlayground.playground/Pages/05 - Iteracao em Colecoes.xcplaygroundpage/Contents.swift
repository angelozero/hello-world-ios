import Foundation

/**
 Iteração em Coleções
 */
let dollars = [5.1, 5.2, 4.9, 4.32, 5.43, 5.11]
let days = ["01/02", "02/02", "03/02", "04/02", "05/02", "06/02"]


// equivalente a java for(int x = 0; x < dollars.length() - 1; x++ ){...}
for i in 0..<dollars.count {
    print("position \(i + 1) --- dollar \(dollars[i]) --- day \(days[i])")
}

print()

// imprimindo apenas quando o dolar foi menor que 5
for i in 0..<dollars.count where dollars[i] < 5{
    print("position \(i + 1) --- dollar \(dollars[i]) --- day \(days[i])")
}

print()

for day in days {
    if day == "04/02" {
        break
    }
    
    print(day)
}

print()

for day in days {
    if day == "04/02" {
        continue
    }
    
    print(day)
}

print()


