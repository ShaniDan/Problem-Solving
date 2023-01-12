// What is the longest word that can be made from only the letters in “RSTLNE”? Not all of those letters need to be used, and letters can be repeated. Make sure your solution can handle ties.

import Foundation

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = [String]()
    var rstlne: Set<Character> = ["R", "S", "T", "L", "N", "E"]
    var rstlneWords = [String]()
    
    for word in sowpodsWords {
        var containsRSTLNE = true
        for character in word {
            if !rstlne.contains(character) {
                containsRSTLNE = false
                break
            } 
        }
        if containsRSTLNE {
            rstlneWords.append(word)
        }
    }
    if let longestRstlne = rstlneWords.max(by: {$1.count > $0.count}) {
        result.append(longestRstlne)
    }
    return result
}
print(solution())
