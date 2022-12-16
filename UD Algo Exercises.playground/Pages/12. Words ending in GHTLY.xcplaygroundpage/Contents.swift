// Create and print an array containing all of the words that end in "GHTLY"

import Foundation

func solution() -> [String] {
    var words = readTxt(name: "sowpods")
    var results = words.filter { word in
        word.hasSuffix("GHTLY")
    }
    return results
}
print(solution())
