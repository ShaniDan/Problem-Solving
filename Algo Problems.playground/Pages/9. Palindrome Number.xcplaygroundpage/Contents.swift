import Foundation

// MARK: Given an integer x, return true if x is a palindrome, and false otherwise.

// Solution with converting integer into a string
    func isPalindrome(_ x: Int) -> Bool {
        let stringX = String(x)
        return stringX == String(stringX.reversed())
    }

print(isPalindrome(10))

// Solution without converting integer into a string

