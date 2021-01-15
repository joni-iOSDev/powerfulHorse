import UIKit

// :::::::::> FUNCTIONS <:::::::::

/*
 Funciones, las funciones nos permiten envolver bloques de codigo
 
 */

// Escribiendo funciones.

//las funciones nos deja reutilizarlas.

func printHelp() {
    let message = """
Welcomee to MyApp!

Run this app inside a directory of images and Myapp will resize them all into thumbnails

"""
    print(message)
    
}

printHelp()

func square(number: Int) -> Int {
    return number * number
}

square(number: 10)

//swift provee dos nombres por cada parametro, uno es usado externamente llamando la funcion y otro usado internamente
// por ejemplo

func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "joni")

// omitiendo paramtros

func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Yesi")

//Default parameters

//Variadic functions, o funciones varidas.
/*
 Algunas funciones son variadas, que es una elegante manera de decir que acepta cualquier number de parametros del mismo tipo. tiene que ser del mismo tipo siempre
 */

//ejemplo

func squareVariadic(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squareVariadic(numbers: 1, 2, 3, 5, 6)

//Writing throwing functions, funciones de lanzamiento

//a veces las funcioens fallan porque tienen un mal input, o porque
//ejemplo

//primero necesitamos definir un enum para describir los errrores que podemos lanzar.
/**
 Estos siempre deben basarse en el error existente de Swift.
 */
enum PasswordError: Error {
    case obvious
    case failed
}

//ahora escribiremos una funcion que lanzara un error si algo va mal.
/**
 Esto significa usar la palabra clave throws antes del valor de retorno de la función, luego usar throw PasswordError.obvious si su contraseña es "contraseña".
 */

func checkPassword(_ password: String) throws -> Bool {
    if password == "123456" {
        throw PasswordError.obvious
    }
    return true
}

//si ejecutamos esta funcion vamos a tener un error,
/*
 En su lugar, debe llamar a estas funciones usando tres palabras clave nuevas: do inicia una sección de código que podría causar problemas, try se usa antes de cada función que pueda generar un error y catch le permite manejar los errores con elegancia.
 */

/**
 Si se arrojan errores dentro del bloque DO, la ejecución salta inmediatamente al bloque catch.
 Intentemos llamar a checkPassword () con un parámetro que arroja un error:
 */

do {
    try checkPassword("123456")
    print("That password is Good!!!")
} catch {
    print("You can't use that password!!!")
}

// PARAMETROS INOUT
/*
 Todos los parámetros pasados ​​a una función Swift son constantes.
 Si lo desea, puede pasar uno o más parámetros como inout, lo que significa que se pueden cambiar dentro de su función, y esos cambios se reflejan en el valor original fuera de la función.
 */

/**
 Por ejemplo, si desea duplicar un número en su lugar, es decir,
 cambiar el valor directamente en lugar de devolver uno nuevo, puede escribir una función como esta:
 */
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 6
doubleInPlace(number: &myNum)
