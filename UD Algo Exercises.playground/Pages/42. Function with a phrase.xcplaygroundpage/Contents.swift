// Write a function that takes a string `phrase` and returns a dictionary containing counts of how many times every character appears in `phrase`.

import Foundation

func solution (_ string: String) -> [Character: Int] {
    var result = [Character: Int]()
    for letter in string {
        result[letter, default: 0] += 1
//        if let count = result[letter] {
//            result[letter] = count + 1
//        } else {
//            result[letter] = 1
//        }
    }
    return result
}
print(solution("Write a function that takes a string `phrase` and returns a dictionary containing counts of how many times every character appears in `phrase`"))

