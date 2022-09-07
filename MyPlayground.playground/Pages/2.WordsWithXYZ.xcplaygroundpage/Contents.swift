import UIKit

// What are all of the words containing an X and a Y and a Z
// Input: words -> array
// Output: words  -> words containing "X, Y, Z"

func wordsContainingXYZ(filename:String) -> [String] {
    var allWords = [String]()
    var wordsWithXYZ = [String]()
    if let startWordsPath = Bundle.main.path(forResource: filename, ofType: "txt") {
        if let startWords = try? String(contentsOfFile: startWordsPath) {
            allWords = startWords.components(separatedBy: "\n")
            for word in allWords {
                if word.contains("X")
                    && word.contains ("Y")
                    && word.contains("Z") {
                    wordsWithXYZ.append(word)
                } else {
                    allWords = ["Error"]
                }
            }
        }
    }
    return wordsWithXYZ
}

print(wordsContainingXYZ(filename: "sowpods"))
