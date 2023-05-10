/* Finding alphabet chains
    - First, what are all of the words that have at least one “A”, one “B”, one “C”, one “D”, one “E”, and one “F” in them, in any order?
        - For example, “FEEDBACK” is an answer to this question
    - Next, is “ABCDEF” the longest alphabet chain that can be found in a word, or is there a longer chain starting somewhere else in the alphabet? Find the longest chain and the words that can be made from that chain. */

import Foundation

//func solution(letters: Set<String>) -> [String] {
//    var sowpodWords = readTxt(name: "sowpods")
//    var result = [String]()
//    // Make a set of available letters
//    let wordSet = Set(letters.map { $0 })
//    // Loop through sowpod words
//outerLoop: for word in sowpodWords {
//    // Loop through letters in a word
//    for letter in word {
//        // Check if the letter is contained in the set
//        if !wordSet.contains(String(letter)) {
//            // if not move on to the next word
//            continue outerLoop
//            }
//        }
//    // Add the word to the result
//    result.append(word)
//    }
//    return result
//}

func wordsInChain(_ letters: Array<Character>) -> [String] {
    var sowpodWords = readTxt(name: "sowpods")
    var result = [String]()
    for word in sowpodWords {
        var containsLetters = true
        for letter in letters {
            if !word.contains(letter) {
                containsLetters = false
                break
            }
        }
        if containsLetters {
            result.append(word)
        }
    }
    return result
}
print(wordsInChain(["A", "B", "C", "D", "E", "F"]))

func solution() -> [Character] {
    let alphabet: [Character] = ["A", "B", "C", "D", "E", "F", "G"]
    // try A - G
    print(wordsInChain(alphabet))
    return []
}

solution()
