// Write a function that takes a string availableLetters as an argument and returns an array of all of the words that can be made from only those letters. Letters can be re-used as many times as needed and can appear in any order. Not all of the letters in availableLetters have to be used.

// Separate characters in a word with commas to be able to match them with availableLetters
// Iterate over words in separatedWords
// Iterate over characters in a word
// Match the characters in a word to the letters in availableLetters

import Foundation

// ROOM
// BASKET

func solution(availableLetters: String) -> [String] {
    var sowpodWords = readTxt(name: "sowpods")
    var result = [String]()
    
    // Make a set of available letters
    let setOfAvailable = Set(availableLetters.map { $0 })
    
    // Loop through sowpod words
    outerLoop: for word in sowpodWords {
//        if setOfAvailable.isSuperset(of: word) { result.append(word) }
        // Loop through letters in word
        for letter in word {
            // Check if the letter is contained in the set
            if !setOfAvailable.contains(letter) {
                // if not, move on to the next word
                continue outerLoop
            }
        }
        // If we make it here, all the letters are in the set. Add it to result
        result.append(word)
    }
    

    return result
}
print(solution(availableLetters: "A, B, M, O, U, R, E, T"))
    
