// Write a function that takes a string prefix as the first argument, a string suffix as the second argument, and an integer length as the third argument. It should return an array of all of the words that start with that prefix, end with that suffix, and are that length.

import Foundation

func solution(prefix: String, suffix: String, length: Int) -> [String] {
    var sowpodWords = readTxt(name: "sowpods")
    var result = [String]()
    for word in sowpodWords {
        if word.hasPrefix(prefix)
            && word.hasSuffix(suffix)
            && word.count == length {
            result.append(word)
        }
    }
    return result
}
print(solution(prefix: "AA", suffix: "RK", length: 8))
