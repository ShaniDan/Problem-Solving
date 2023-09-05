//: [Previous](@previous)
/*
 Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.
 
 Sample input and output
 • The letter “a” appears twice in “The rain in Spain”.
 • The letter “i” appears four times in “Mississippi”.
 • The letter “i” appears three times in “Hacking with Swift”.
 */

import Foundation

func challenge5a(input: String, count: Character) -> Int {
    var letterCount = 0
    
    for letter in input {
        if letter == count {
            letterCount += 1
        }
    }
    return letterCount
}
print(challenge5a(input: "The rain in Spain", count: "a"))

// reduce
func challenge5b(input: String, count: Character) -> Int {
    return input.reduce(0) {
        $1 == count ? $0 + 1 : $0
    }
}
print(challenge5b(input: "Mississippi", count: "s"))

// NSCountedSet
func challenge5c(input: String, count: String) -> Int {
    let array = input.map { String($0) }
    let counted = NSCountedSet(array: array)
    
    return counted.count(for: count)
}

//replacingOccurrences
func challenge5d(input: String, count: String) -> Int {
    let modified = input.replacingOccurrences(of: count, with: "")
    return input.count - modified.count
}
print(challenge5a(input: "The rain in Spain", count: "i"))
// lll

