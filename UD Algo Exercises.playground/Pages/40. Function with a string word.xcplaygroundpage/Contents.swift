// Write a function that takes a string word as an argument and returns a count of all of the “A”s in that string.

import Foundation

func solution(_ string: String) -> Int {
    
    var result = 0
    for letter in string.lowercased() {
        if letter == "a" {
            result += 1
        }
    }
    return result
}
print(solution("AAaHING"))
