//: [Previous](@previous)
// Initializer
// https://www.youtube.com/watch?v=iy3PN-MLCT4

import Foundation

class Car {
    var make: String
    var model: String
    var color: String
    // designated
    init(make: String, model: String, color: String) {
        self.make = make
        self.model = model
        self.color = color
    }
    // convenience
    convenience init(make: String, model: String) {
        self.init(make: make, model: model, color: "Red")
    }
}

// Tesla class is inhereting from the Car class

class Tesla: Car {
    // property. When you add a property you lose all the properties in the parent class but if we override the init we'll keep the parent class properties
    var range: Double
    
    convenience override init(make: String, model: String, color: String) {
        self.init(make: make, model: model, color: color)
    }
    
    init(make: String, model: String, color: String, range: Double) {
        self.range = range
        super.init(make: model, model: model, color: color)
    }
}

class CyberTruck: Tesla {
    
    var isTurbo: Bool
    
    convenience override init(make: String, model: String, color: String, range: Double, isTurbo: Bool) {
        self.init(make: make, model: model, color: color, range: 200, isTurbo: true)
    }
    
    override init(make: String, model: String, color: String, range: Double, isTurbo: Bool) {
        self.isTurbo = isTurbo
        super.init(make: make, model: model, color: color, range: range)
    }
}
