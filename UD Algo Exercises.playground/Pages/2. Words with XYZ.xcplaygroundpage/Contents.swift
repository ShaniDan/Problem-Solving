// What are all of the words containing UU?

import Foundation

func solution() -> [String] {
    var words = readTxt(name: "sowpods")
    var results = words.filter {word in word.contains("X")
        && word.contains("Y")
        && word.contains("Z")
    }
    return results
}
print(solution())

