// What is the longest word that can be made without the letters in “AEIOSHRTN” (in other words, without the most common letters)? Make sure your solution can handle ties.

import Foundation

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var result = [String]()
    var longestResult = [String]()
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
            longestResult.append(word)
//            print(word.count)
        }
        if containsAeioshrtn {
            if result.isEmpty {
                result = [word]
            } else if result[0].count < word.count {
                result = [word]
            } else if result[0].count ==  word.count {
                result.append(word)
            }
        }
    }
    return result
}

let answer = solution()
print(answer)
let characterLength = answer.first?.count

// \(answer.first?.count ?? 0) - we have to have a default == \(answer[0].count) - if there is nothing it'll crash

print("There were \(answer.count) words of \(answer.first?.count ?? 0) characters")
