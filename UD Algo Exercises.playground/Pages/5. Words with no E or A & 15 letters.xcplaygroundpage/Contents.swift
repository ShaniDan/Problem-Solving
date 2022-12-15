// What are all of the words that have no E or A and are at least 15 letters long?

import Foundation

func solution() -> [String] {
    var words = readTxt(name: "sowpods")
    var results = words.filter { word in !word.contains("E")
        && !word.contains("A")
        && word.count <= 15
    }
    return results
}
print(solution())
