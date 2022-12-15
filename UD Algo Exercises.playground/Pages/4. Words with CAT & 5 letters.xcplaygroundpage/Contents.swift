// What are all of the words that contain the word CAT and are exactly 5 letters long?

import Foundation

func solution() -> [String] {
    var words = readTxt(name: "sowpods")
    var results = words.filter {word in word.contains("CAT")
        && word.count == 5
    }
    return results
}
print(solution())
