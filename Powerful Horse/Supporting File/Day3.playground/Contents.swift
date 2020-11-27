import Foundation

//DAY3
//======ARITHMETIC OPERATORS========
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore


//Sobrecarga de operador o Operator overloading

let meaningOfLife = 42
let doubleMeaning = 42 + 42

//Pero el signo mas (+) tambien une string
let fakers = "Fakers gonna "
let action = fakers + "fake"

//No hay que olvidar que swift es un type-safe (tipo seguro), signica que no quiere mezclar tipos.
//Por ejemplo, no puede agregar un Int a un string esto no tiene ningun sentido.

//Operadores de asignación compuesta
var score = 95
score -= 5
