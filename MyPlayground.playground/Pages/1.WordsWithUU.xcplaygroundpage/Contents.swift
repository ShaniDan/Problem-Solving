import UIKit

// What are all of the words containing UU?
// Input: words -> array
// Output: words  -> array of words with UU


func wordsContainingCATAndFiveLetter(filename: String) -> [String] {
    var allWords = [String]()
    var wordsWithCATAndFiveLetter = [String]()
    if let filePath = Bundle.main.path(forResource: filename, ofType: "txt") {
        if let changeContentsToString = try? String(contentsOfFile: filePath) {
            allWords = changeContentsToString.components(separatedBy: "\n")
          
            for word in allWords {
                if !word.contains("A")
                    && !word.contains("E")
                    && word.count <= 15 {
                    wordsWithCATAndFiveLetter.append(word)
                } else {
                    allWords = ["Error"]
                }
            }
        }
    }
    return wordsWithCATAndFiveLetter
}

print(wordsContainingCATAndFiveLetter(filename: "sowpods"))

