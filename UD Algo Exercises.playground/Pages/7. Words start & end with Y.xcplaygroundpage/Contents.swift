// What are all of the words that both start and end with a Y?

import Foundation

func solution() -> [String] {
    var words = readTxt(name: "sowpods")
    var results = words.filter {
        word in word.hasPrefix("Y")
        && word.hasSuffix("Y")
    }
    return results
}
print(solution())
