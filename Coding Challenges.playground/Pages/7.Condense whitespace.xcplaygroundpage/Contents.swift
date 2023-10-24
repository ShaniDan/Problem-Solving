//: [Previous](@previous)
/*
 Write a function that returns a string with any consecutive spaces replaced with a single space.
 Sample input and output
 I’ve marked spaces using “[space]” below for visual purposes:
 • The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
 • The string “[space][space][space][space]a” should return “[space]a”.
 • The string “abc” should return “abc”.
 */

import Foundation

func challenge7a(input: String) -> String {
    var result = ""
    var seenSpace = false
    for character in input {
        //check if seenSpace is true
        if character == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        result.append(character)
    }
    return result
}
print(challenge7a(input: "a   b   c"))

func challenge7b(input: String) -> String {
   return input.replacingOccurrences(of: " +", with: " ",
options: .regularExpression, range: nil)
}

print(challenge7a(input: "a   b   c"))



