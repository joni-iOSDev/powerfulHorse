import UIKit

// ======= LOOPS ========

//por ejemplo

let count = 1...10

//podemos usar for

for number in count {
    print("Number is \(number)")
}

//podemos hacer lo mismo con un array

let albums = ["Red", "1090", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

//========= WHILE =========
var number = 1

while number <= 20 {
    print(number)
    number += 1
    break
}

print("Ready or not, here I come!")

//Infinite loops
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
