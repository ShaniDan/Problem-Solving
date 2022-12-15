// What are all of the words containing a Q but not a U?

import Foundation

func solution() -> [String] {
    var words = readTxt(name: "sowpods")
    var results = words.filter {word in word.contains("Q")
        && !word.contains("U")
    }
    return results
}
print(solution())

