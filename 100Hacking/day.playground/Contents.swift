import UIKit

var str = "Hello, playground"
/**
 Array:
    son una coleccion de valores que son almacenados como un single value.
 
 for example
 */

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles  = [john, paul, george, ringo]

print(beatles)
print(beatles[1])

//crash: Swift crashea si intenta leer un valor que no existe
//por ejemplo
//print(beatles[9])

//============================================================//

//SETS: una collecion desornedas de unicos elementos.
// los sets son una coleccion de valores como los Array, exepto por dos diferencias:
/**
    1) los items no estan almacenados en un orden, estos son almacenados de manera random
    2) Ningún elemento puede aparecer dos veces en un conjunto, todos los items deben ser unicos.
 */

let colors = Set(["Red", "Green", "Blue"])

//======= TUPLAS ==========//

/**
 Las tuplas le permiten almacenar varios valores juntos en un solo valor. Eso puede sonar como matrices, pero las tuplas son diferentes:
    - 1: No puedes agregar o remove items desde una tupla, tienen un tamaño fijo
    - 2: No se puede cambiar el tyoe de item en una tupla, siempre tienen el mismo tipo.
    - 3: Puede acceder a elementos en una tupla usando posiciones numéricas o nombrándolos, pero Swift no le permitirá leer números o nombres que no existen.
 */
var myName = (first: "Joni", last: "Swift")

print(myName.first)

//======= Colecciones ==========//
/**
 Los diccionarios son colecciones de valores al igual que las matrices, pero en lugar de almacenar cosas con una posición entera, puede acceder a ellas utilizando lo que desee
 
 -**The most common way of storing dictionary data is using strings. For example, we could create a dictionary that stores the height of singers using their name:**
 */

let rockStart = [
    "Taylor Swift" : 1.78,
    "Ed sheeran" : 1.73
]

rockStart["Taylor Swift"]

//  valores default en una coleccion

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
/*
 Pero si intentáramos leer el helado favorito de Charlotte, obtendríamos cero,
 lo que significa que Swift no tiene un valor para esa clave
 */
favoriteIceCream["Charlotte", default: "Unknown"]


//======= ENUMs ==========//

