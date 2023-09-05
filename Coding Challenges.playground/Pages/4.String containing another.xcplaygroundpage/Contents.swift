//: [Previous](@previous)
/*
 Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.
 
 Sample input and output
 • The code "Hello, world".fuzzyContains("Hello") should return true.
 • The code "Hello, world".fuzzyContains("WORLD") should return true.
 • The code "Hello, world".fuzzyContains("Goodbye") should return
 false.
 */

import Foundation

extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return self.uppercased().contains(string.uppercased())
    }
}

extension String {
    func fuzzyContains2(_ string: String) -> Bool {
        let range = range(of: string, options: .caseInsensitive)
        return range != nil
    }
}

print("Hello, world".fuzzyContains("world"))
print("Hello, world".fuzzyContains2("WORLD"))


