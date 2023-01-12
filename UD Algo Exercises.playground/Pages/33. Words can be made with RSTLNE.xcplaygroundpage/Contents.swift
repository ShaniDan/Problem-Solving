// What are all of the words that can be made from only the letters in “RSTLNE”? Not all of those letters need to be used, and letters can be repeated.
/* - Loop through the words to check if the letters equals to RSTLNE
   - Append the result with the words with only RSTLNE letters
 */

import Foundation

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = [String]()
    var rstlne = ["R", "S", "T", "L", "N", "E"]
    
    for word in sowpodsWords {
        var testCase = ""
        for character in word {
            var stringChar = String(character)
            if rstlne.contains(stringChar) {
                testCase.append(stringChar)
            }
        }
        if testCase == word {
            result.append(word)
        }
    }
    return result
}
var startTime = CFAbsoluteTimeGetCurrent()
//solution()
//print("Took \(CFAbsoluteTimeGetCurrent() - startTime) seconds")

func solution2() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = [String]()
    var rstlne: Set<Character> = ["R", "S", "T", "L", "N", "E"]
    
    for word in sowpodsWords {
        var containsRSTLNE = true
        for character in word {
            if !rstlne.contains(character) {
                containsRSTLNE = false
                break
            }
        }
        if containsRSTLNE {
            result.append(word)
        }
    }
    return result
}

startTime = CFAbsoluteTimeGetCurrent()
print(solution2())
print("Took \(CFAbsoluteTimeGetCurrent() - startTime) seconds")
