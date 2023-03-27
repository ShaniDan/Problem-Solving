// Array.enumerated

import Foundation
var array = [3, 5, 4, 8, 6, 9]
var dict = [Int: Int]()

let minarray = array.max()
print(minarray)

// Initializers

class Person {

// "name" is a property. In this class Person we have a "name" property
    var name = "None"
    
}

// Person object

Person()

// the purpose of initializer is that the object is set-up and ready to go


let names = ["Alice", "Bob", "Charlie", "David"]
var nameCounts: [String: Int] = [:]

for name in names {
    if let count = nameCounts[name] {
        // If the name is already in the dictionary, increment the count
        nameCounts.updateValue(count + 1, forKey: name)
    } else {
        // If the name is not in the dictionary, add it with a count of 1
        nameCounts.updateValue(1, forKey: name)
    }
}

print(nameCounts)
