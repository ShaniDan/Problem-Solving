// Write a function that takes a string availableLetters as an argument and returns an array of all of the words that can be made from only those letters. Letters can be re-used as many times as needed and can appear in any order. Not all of the letters in availableLetters have to be used.
//
// How can I find the matching letters to availableLetters in a word?
// Separate characters in a word with commas to be able to match them with availableLetters
//  Iterate over words in separatedWords
// Iterate over characters in a word
// Match the characters in a word to the letters in availableLetters

import Foundation

func solution(availableLetters: String) -> [String] {
    var sowpodWords = readTxt(name: "sowpods")
    var result = [String]()
          let separatedWrods = sowpodWords.map { string in
           let commaWord = string.map { String($0) }
           return commaWord.joined(separator: ", ")
        }
//    print(separatedWrods)
    for word in separatedWrods {
       for char in word {
           if availableLetters == String(char) {
               result.append(word)
           }
        }
    }
    return result
}
print(solution(availableLetters: "A, B, M, O, U, R, E, T"))
    
