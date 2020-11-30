import UIKit

// :::::::::> CLOSURE <:::::::::

//un closure basico

let driving = {
    print("Soy un closure basico")
}

driving()

//aceptando parametros

let hello = { (name: String) in
    print("Hola \(name) sos un parametro amigo")
}

hello("Joni")


// Retornando valores desde el closure

let drivingDriving = {(place: String) -> String in
    return "I'm going to \(place) in my car"
}


let message = drivingDriving("Vancouver")

print(message)

// Closure como parametro
//tenemos un closure basico

let closureBasic = {
    print("Soy un closure basico")
}

func travel(with: () -> Void) {
    print("I'm getting ready to go.")
    with()
    print("I arrived!")
}

travel(with: closureBasic)

// TRAILING CLOSURE SYNTAX

//si el ultimo parametro es un closure, swift lo usa con una sintaxi especial llamada TRAILING CLOSURE SYNTAX.
//En lugar de pasar su closure como parámetro, lo pasa directamente después de la función entre llaves.

func myTravel(action: () -> Void) {
    print("Listo para salir")
    action()
    print("Llegue")
}

myTravel() {
    print("I'm driving in my car")
}

//De hecho, como no existen otros parámetros, podemos eliminar los paréntesis por completo:
myTravel {
    print("I'm driving in my monopatin")
}




//

func weTravel(action: (String) -> String) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

weTravel { (place: String) in
    return("I'm going to \(place) in my car")
}
//=============

//style 1

weTravel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//style 2

weTravel { place -> String in
    return "I'm going to \(place) in my car"
}

//style 3

weTravel { place in
    return "I'm going to \(place) in my car"
}


//style 4
weTravel {
    return "Esto es un tipo de closure \($0)"
}
