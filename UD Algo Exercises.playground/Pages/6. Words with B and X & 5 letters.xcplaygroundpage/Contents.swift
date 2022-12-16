// What are all of the words that have a B and an X and are less than 5 letters long?

import Foundation

func solution() -> [String] {
    var words = readTxt(name: "sowpods")
    var results = words.filter { word in word.contains("B")
        && word.contains("X")
        && word.count <= 5
        
    }
    return results
}
print(solution())
