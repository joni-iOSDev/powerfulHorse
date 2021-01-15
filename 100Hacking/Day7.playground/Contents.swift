import UIKit

// CREANDO TU PROPIO STRUCTS
//Swift te permite diseñar tus propios type de dos formas, el cual el mas comun es llamado structures, o solo structs.
//vamos a comenzar con algo simple

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        return isOlympicSport ? "\(name) is an Olympic sport" : "\(name) is not an Olympic sport"
        }
}

var tennis = Sport(name: "Tennis", isOlympicSport: true)

print(tennis.name)

tennis.name = "Futbol"
print(tennis.name)
print(tennis.olympicStatus)

//property observer
// Los observadores de propiedades le permiten ejecutar código antes o después de cualquier cambio de propiedad.

//ejemplo
struct Progress {
    var task: String
    // establecemos una property oberver
    var amount: Int {
        willSet {
            print("\(task) will is \(amount)% complete")
        }
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Cargando Data", amount: 0)

progress.amount = 30
progress.amount = 80
progress.amount = 100
/*
 Lo que queremos que suceda es que Swift imprima un mensaje cada vez que la cantidad cambie, y podemos usar un observador de propiedad didSet para eso.
 Esto ejecutará algún código cada vez que cambie la cantidad:
 */

