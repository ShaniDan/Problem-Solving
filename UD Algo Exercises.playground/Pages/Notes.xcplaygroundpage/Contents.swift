//: [Previous](@previous)

import Foundation

var numbers = [0: "zero", 1: "one", 10: "ten", 100: "one hundred"]
print(numbers)
// Add or change a value
numbers[20] = "twenty"
print(numbers)
var sortedNumbers = numbers.sorted(by: { $0.0 < $1.0 })
print(numbers)
