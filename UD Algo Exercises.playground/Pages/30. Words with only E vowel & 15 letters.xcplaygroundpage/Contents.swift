// What are all of the words that have only “E”s for vowels and are at least 15 letters long?

import Foundation

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result  = sowpodsWords.filter { $0 .contains("E")
        && !$0 .contains("A")
        && !$0 .contains("I")
        && !$0 .contains("O")
        && !$0 .contains("U")
        &&  $0 .count == 15
    }
    return result
}
print(solution())
