/* 
 Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
 
 Sample input and output
 • The string “No duplicates” should return true.
 • The string “abcdefghijklmnopqrstuvwxyz” should return true.
 • The string “AaBbCc” should return true because the challenge is case-sensitive.
 • The string “Hello, world” should return false because of the double Ls and double Os.
 */

import Foundation

// solution with Array
func challenge1a(input: String) -> Bool {
    var alreadySeenLetters = [Character]()
   // b
    for letter in input {
//        print("Checking to see if \(letter) is in \(alreadySeenLetters)")
        if alreadySeenLetters.contains(letter) {
//            print("Found \(letter)")
            return false
        }
        // a
        alreadySeenLetters.append(letter)
    }
    return true
}
print(challenge1a(input: "abca"))
print(challenge1a(input: "abcdefghijklmnopqrstuvwxyz"))


// solution with Set
func challenge1b(input: String) -> Bool {
    return Set(input).count == input.count
}
print(challenge1b(input: "Hello, world"))
