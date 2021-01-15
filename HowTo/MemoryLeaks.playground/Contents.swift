import UIKit

// MARK: - multiplier
typealias ResultMultiply = ((Int) -> Int)
typealias Dollar = Decodable & Encodable

func multiply(by multiplier: Int) -> ResultMultiply {
    return { (input: Int) -> Int in
        return input * multiplier
    }
}

var multiplier = 2
let muliplyTwo = multiply(by: multiplier)
print("PH123 \(multiplier)")
multiplier = 4
print("PH123 \(multiplier)")
let multiplyFour = multiply(by: multiplier)

func demo() {
    multiplier
}
