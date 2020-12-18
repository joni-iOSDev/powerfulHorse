import UIKit

// Initializers -inicializadores

//Los inicializadores son metodos especiales que provee diferentes formas para crear tu estructura (structs), Todas los structs viene con una por defecto, llamado memberwise initializer - Esto le pide que proporcione un valor para cada propiedad cuando cree la estructura

// Pueden ver esto si creamos un User struct que tiene como una propiedad.

struct User {
    var username: String
}

//Cuando creamos una de esas estructuras, debemos proporcionar un nombre de usuario:
//var user = User() -> Dejarlo asi tira un error de que falta un valor.

var user = User(username: "GF User pro")

//Cuando proveemos nuestro propio inicializador para reemplazar el default.
struct GFUser {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!!")
    }
}

var gfUser = GFUser()
gfUser.username

//SELF
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//Lazy properties
//Como optimización del rendimiento, Swift le permite crear algunas propiedades solo cuando son necesarias

//example

struct FamilyTree {
    init() {
        print("Creating family tree")
    }
}


struct Person2 {
    var name: String
    //agregando lazy var swift solo lo va a crear a la estructura FamilyTree cuando este tenga un primer acceso.
    lazy var familyTree = FamilyTree()
    init(name: String) {
        self.name = name
    }
}

var personConLazy = Person2(name: "Jonatan")

personConLazy.familyTree // si personConLazy es un let cuando queramos acceder a este con una propiedad lazy sale un error por que al acceder a una propiedad que va a ser creada en ese momento, let lo bloquea al no poder cambiar su valor, ergo debo pasarlo a un VAR


// === Static properties and methods ====


