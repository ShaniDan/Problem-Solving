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
