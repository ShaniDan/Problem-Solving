// What are all of the words that both start with a “TH” and end with a “TH”?

import Foundation

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = sowpodsWords.filter { $0 .hasPrefix("TH") && $0.hasSuffix("TH")}
    return result
}
print(solution())
