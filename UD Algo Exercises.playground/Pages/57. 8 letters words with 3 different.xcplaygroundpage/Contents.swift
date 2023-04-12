// What are all of the words that are at least 8 letters long and use 3 or fewer different letters? For example, “REFERRER” is an answer to this question, because it uses only 3 different letters: R, E, and F.

import Foundation

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = [String]()
    for word in sowpodsWords {
        var uniqueLetters = Set<Character>()
        for char in word {
            uniqueLetters.insert(char)
        }
        if uniqueLetters.count <= 3 && word.count >= 8 {
            result.append(word)
        }
//        print(uniqueLetters)
    }
    return result
}
print(solution())
