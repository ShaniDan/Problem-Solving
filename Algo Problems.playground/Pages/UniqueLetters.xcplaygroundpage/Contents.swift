/* Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
 
 Sample input and output
 • The string “No duplicates” should return true.
 • The string “abcdefghijklmnopqrstuvwxyz” should return true.
 • The string “AaBbCc” should return true because the challenge is case-sensitive.
 • The string “Hello, world” should return false because of the double Ls and double Os.
 */

import Foundation

func uniqueLetter(unique: String) -> Bool {
    var letters = [Character]()
    
    for letter in unique {
        if letters.contains(letter) {
            return false
        }
        letters.append(letter)
    }
    return true
}
//print(uniqueLetter(unique: "abcdefghijklmnopqrstuvwxyz"))

