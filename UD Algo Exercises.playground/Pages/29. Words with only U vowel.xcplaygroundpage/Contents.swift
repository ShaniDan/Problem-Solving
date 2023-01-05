// What are all of the words that have only “U”s for vowels?

import Foundation

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = sowpodsWords.filter { $0 .contains("U")
        && !$0 .contains("A")
        && !$0 .contains("E")
        && !$0 .contains("I")
        && !$0 .contains("O")
    }
    return result
}
print(solution())
