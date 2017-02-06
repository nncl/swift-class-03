/*
 * Bro, check teachers doc for better explanation dough
 */

/*
 * Structure
 * Pass by copy
 */

/*
 * Generics
 * Many types in just one function, such as <T> in Java *-*
 */

// inout as a parameter: let you pass through reference, not value - Use &, swaptInts(&a, &b)

// ==
// Computed Variables & Arm variables
    // Convenience

// ? - means optional

// ==========
// == Subscript ==
// == Let u access an object from a class without adding a dot to call it... ==

// Check material
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

class Car: Vehicle {
    var licensePlate: String
    var driver: String? // optional
    override var maxSpeed: UInt {return 100}
    subscript(index: Int) -> String {
        get {
            let plateArray = Array(self.licensePlate.characters)
            return String(plateArray[index])
        }
        
        set {
            var plateArray = Array(self.licensePlate.characters)
            plateArray[index] = Character(newValue)
            self.licensePlate = String (plateArray)
        }
    }
    
    override func descript() -> String {
        return "\(super.descript()), Placa: \(licensePlate)"
    }
        
    init(model: String, licensePlate: String) {
        self.licensePlate = licensePlate
        super.init(model: model)
    }
        
    convenience init(driver: String) {
        self.init(model: "", licensePlate: "")
        self.driver = driver
    }
}

print(Vehicle.alert()) // same as static class
var ferrari = Car(driver: "Cauê")
ferrari.licensePlate = "EJE-7627"
print(ferrari.licensePlate)
ferrari[2] = "A"
print(ferrari.licensePlate)
// ==========

// ============
// Extends
// ============

// 1 - String.count() must returns how many characters are in a string
/*
extension String {
    override var count: UInt {return self.characters.count}
    http://stackoverflow.com/questions/24092884/get-nth-character-of-a-string-in-swift-programming-language
}
*/
// 2 - .initials() Must returns all phrase's initials

// String here\(varHere) <- composition

import Foundation // import to create extensions for strings

extension String {
    // self: current string, like this
    var count : Int {
        return self.characters.count
    }
    
    // Concat strings
    // Reduce takes each item in an array and applies some logic
    // In this case, we are take the first element and concating on it
    // the next first character from the next array's item
    var initials: String {
        return self.components(separatedBy: " ").reduce("", {"\($0)\($1.characters.first!)"})
    }
}

print("cauê bruno de almeida".count)
print("cauê bruno de almeida".initials)

// ============
// Protocols == Interfaces
//  You can implement more functionalities per class when implementing protocols
// ============





















