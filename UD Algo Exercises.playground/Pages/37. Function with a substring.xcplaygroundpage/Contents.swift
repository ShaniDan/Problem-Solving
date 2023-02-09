// Write a function that takes a string substring as an argument and returns an array of all of the words that contain that substring (the substring can appear anywhere in the word).

import Foundation

func solution(string: String) -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = [String]()
    for word in sowpodsWords {
        if word.contains(string) {
            result.append(word)
        }
    }
    return result
}
print(solution(string: "UU"))
