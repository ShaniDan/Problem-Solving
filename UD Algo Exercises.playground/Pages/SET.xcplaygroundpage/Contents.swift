//: [Previous](@previous)

import Foundation

// MARK: In Swift, a Set is a collection type that represents an unordered set of unique values. This means that each value in a Set can only appear once, and the order in which the values appear is not guaranteed.

// MARK: You can create a new Set by specifying the type of the elements it will contain in angle brackets, and then passing in an array literal of the elements:

var mySet: Set<Int> = [1, 2, 3, 4, 5]

// MARK: You can also create an empty Set of a certain type by using its initializer:

var emptySet = Set<String>()

// MARK: You can add new elements to a Set using the insert method:

mySet.insert(6)

// MARK: You can remove elements from a Set using the remove method:

mySet.remove(2)

// MARK: You can check if a Set contains a certain element using the contains method:

mySet.contains(3) // true
mySet.contains(7) // false

// MARK: You can iterate over the elements of a Set using a for-in loop:

for element in mySet {
    print(element)
}

// MARK: You can also perform set operations such as intersection, union, and difference using methods such as intersection, union, and subtract, respectively.

let setA: Set<Int> = [1, 2, 3, 4]
let setB: Set<Int> = [3, 4, 5, 6]
let intersection = setA.intersection(setB) // [3, 4]
let union = setA.union(setB) // [1, 2, 3, 4, 5, 6]
let difference = setA.subtracting(setB) // [1, 2]

// MARK: In addition, you can also use various other set operations and properties like isSubset(of:), isSuperset(of:), isEmpty, and count.
