// What is the longest word that can be made from only the letters in “RSTLNE”? Not all of those letters need to be used, and letters can be repeated. Make sure your solution can handle ties.

import Foundation

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
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
            if rstlneWords.isEmpty {
                rstlneWords = [word]
                print(word)
            } else if rstlneWords[0].count < word.count {
                rstlneWords = [word]
            } else if rstlneWords[0].count == word.count {
                rstlneWords.append(word)
            }
        }
    }
    return rstlneWords
}
print(solution())

func solution2() -> [String] {
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
    for word in rstlneWords {
        if result.isEmpty {
            result = [word]
        } else if result[0].count < word.count {
            result = [word]
        } else if result[0].count == word.count {
            result.append(word)
        }
    }
    return result
}

print(solution2())
