/*
 * Structure
 * Pass by copy
 */

/*
 * Generics
 * Many types in just one function, such as in Java = <T>
 */

// inout as a parameter: let you pass through reference, not value - Use &, swaptInts(&a, &b)

// Computed Variables & Arm variables
    // Convenience

// ? - means optional

// Subscript - Let u access an object from a class without saying dot...

class Vehicle {
    var _speed: UInt = 0
    var maxSpeed: UInt {
        get {return 250}
    }
    var model : String
    var speed : UInt {
        get {return _speed}
        set {
            let finalValue = min(newValue, maxSpeed)
            _speed = finalValue
        }
    }
    
    static let speedUnit = "KM/h"
    
    init(model: String) {
        self.model = model
    }
    
    class func alert() -> String {
        return "Se beber não dirija"
    }
    
    func descript() -> String {
        return "Veículo: \(model), velocidade atual: \(speed)"
    }
}















