// Write a function that takes a string prefix as an argument and returns an array of all of the words that start with that prefix (the prefix has to be at the beginning of the word).

import Foundation

func solution(_ prefix: String) -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = [String]()
    for word in sowpodsWords {
        guard word.hasPrefix(prefix) else { continue }
        result.append(word)
//        if word.hasPrefix(prefix) {
//            result.append(word)
//        } else {
//            continue
//        }
        print("Found a word with \(prefix): \(word)")
    }
    return result
}
print(solution("BEE"))
