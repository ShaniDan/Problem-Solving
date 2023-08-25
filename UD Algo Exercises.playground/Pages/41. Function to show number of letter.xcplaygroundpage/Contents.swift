// Write a function that takes a string word as the first argument, a string letter as the second argument, and returns a count of how many times letter occurs in word.

import Foundation

func solution (_ string: String, _ letter: Character) -> Int {
    var result = 0
    for letter1 in string {
        if letter1 == letter {
            result += 1
        }
    }
    return result
}
print(solution("ABBBREVIATURE", "B"))

func solution1(_ phrase: String) -> [String: Int] {
    
    var dict = [String: Int]()
    for letter in phrase {
        let stringLetter = String(letter)
        dict[stringLetter, default: 0] += 1
        
    }
    
    return dict
}
print(solution1("Hello world"))
