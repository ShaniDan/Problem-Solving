// What are all of the words that have all 5 vowels, in alphabetical order?

import Foundation

func solution() -> [String] {
    var words = readTxt(name: "sowpods")
    var vowels = ["A", "E", "I", "O", "U"]
    var results = [String]()
    
    for word in words {
        var testCase = [String]()
        for character in word {
            var stringChar = String(character)
            if vowels.contains(stringChar) {
                testCase.append(stringChar)
            }
        }
        if testCase == vowels {
            results.append(word)
        }
    }
    return results
}
let startTime = CFAbsoluteTimeGetCurrent()
print(solution())
let endTime = CFAbsoluteTimeGetCurrent()
print("It took \(endTime - startTime) seconds")
