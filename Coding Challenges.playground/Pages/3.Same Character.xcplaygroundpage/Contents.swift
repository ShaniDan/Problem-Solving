/*
 Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
 
 Sample input and output
 • The strings “abca” and “abca” should return true.
 • The strings “abc” and “cba” should return true.
 • The strings “ a1 b2 ” and “b1 a2” should return true.
 • The strings “abc” and “abca” should return false.
 • The strings “abc” and “Abc” should return false.
 • The strings “abc” and “cbAa” should return false.
 */

import Foundation

func challenge3a(input1: String, input2: String) -> Bool {
    var checkString = input2
    
    for letter in input1 {
        if let index = checkString.index(of: letter) {
            checkString.remove(at: index)
        } else {
            return false
        }
    }
    return checkString.count == 0
}
print(challenge3a(input1: "abca", input2: "abca"))

func challenge3b(input1: String, input2: String) -> Bool {
    let array1 = Array(input1)
    let array2 = Array(input2)
    return array1.sorted() == array2.sorted()
}

print(challenge3b(input1: "adke", input2: "knds"))
