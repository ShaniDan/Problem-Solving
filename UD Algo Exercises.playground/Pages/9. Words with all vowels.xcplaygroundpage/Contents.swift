// What are all of the words that have all 5 vowels, in any order?

import Foundation

func solution() -> [String] {
    var words = readTxt(name: "sowpods")
    var results = words.filter { word in
        word.contains("A")
        && word.contains("E")
        && word.contains("I")
        && word.contains("O")
        && word.contains("U")
        && word.contains("Y")
    }
    return results
}
print(solution())

