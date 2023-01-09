// What are the shortest words that start with “PRO” and end in “ING”? Make sure your solution can handle ties.

import Foundation

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = [String]()
    
    for word in sowpodsWords {
        if word.hasPrefix("PRO")
            && word.hasSuffix("ING") {
            result.append(word)
        }
    }
    let sortedResults = result.sorted {$0.count < $1.count}
    let shortest = sortedResults.first!.count
    return sortedResults.filter{$0.count == shortest}
}
print(solution())
