// What are all of the words that start with “PRO”, end in “ING”, and are exactly 11 letters long?

import Foundation

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = sowpodsWords.filter { $0.hasPrefix("PRO") && $0.hasSuffix("ING") && $0.count == 11 }
    return result
}
print(solution())

