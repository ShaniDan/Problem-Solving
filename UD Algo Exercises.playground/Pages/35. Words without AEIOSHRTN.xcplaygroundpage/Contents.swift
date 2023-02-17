// What are all of the words that can be made without the letters in “AEIOSHRTN” (in other words, without the most common letters)?

import Foundation

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = [String]()
    var aeioshrtn: Set = ["A", "E", "I", "O", "S", "H", "R", "T", "N"]
    
    for word in sowpodsWords {
        var containsAeioshrtn = true
        for character in word {
            if aeioshrtn.contains(String(character)) {
                containsAeioshrtn = false
                break
            }
        }
        
        if containsAeioshrtn {
            result.append(word)
        }
    }
    return result
}
print(solution())
