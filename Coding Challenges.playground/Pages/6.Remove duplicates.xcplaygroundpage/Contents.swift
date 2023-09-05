//: [Previous](@previous)

/*
 Remove duplicate letters from a string
 
 Sample input and output
 • The string “wombat” should print “wombat”.
 • The string “hello” should print “helo”.
 • The string “Mississippi” should print “Misp”.
 */

import Foundation

// func that takes a String parameter named input
func challenge6a(input: String) -> String {
    // declare a result variable and a Set with characters
    var result = ""
    var setCharacters = Set<Character>()
    // loop over input
    for char in input {
        // check if a Set contains contains a character
        if !setCharacters.contains(char) {
            // append to the result
            result.append(char)
            setCharacters.insert(char)
        }
    }
    return result
}
print(challenge6a(input: "hello"))
print("Text")
