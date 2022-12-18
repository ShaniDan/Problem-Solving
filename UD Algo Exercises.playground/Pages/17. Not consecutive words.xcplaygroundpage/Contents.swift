// What are all of the letters that never appear consecutively in an English word? For example, we know that “U” isn’t an answer, because of the word VACUUM, and we know that “A” isn’t an answer, because of “AARDVARK”, but which letters never appear consecutively
// input - array of allwords
// output - array of letters which never appear consecutively in English

import Foundation
func notConsecutiveLetters(filename: String) -> [String] {
    var allWords = readTxt(name: "sowpods")
    var alphaLetters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
            for word in allWords {
                var prevChar = ""
                for char in word {
                    var character = String(char)
                    if alphaLetters.contains(character)
                    && character == prevChar {
                        alphaLetters.removeAll(where:{ $0 == character})
                    }
                    prevChar = character
                }
            }
    return alphaLetters
}
print(notConsecutiveLetters(filename: "sowpods"))


