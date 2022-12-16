// What is the longest word that contains no vowels?

import Foundation

func solution() -> [String] {
    var words = readTxt(name: "sowpods")
    var results = [String]()
    var noVowelWords = [String]()
    
    for word in words {
        if !word.contains("A")
            && !word.contains("E")
            && !word.contains("I")
            && !word.contains("O")
            && !word.contains("U")
            && !word.contains("Y") {
            noVowelWords.append(word)
        }
    }
    // if the second element is greater than the previous element
    
    if let VowelWords = noVowelWords.max(by: {$1.count > $0.count}) {
        results.append(VowelWords)
}
    return results
}
print(solution())


