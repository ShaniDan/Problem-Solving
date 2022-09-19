import UIKit

// What are all of the words containing UU?
// Input: words -> array
// Output: words  -> array of words with UU


func wordsContainingUU(filename: String) -> [String] {
    var allWords = [String]()
    var wordsWithUU = [String]()
    if let filePath = Bundle.main.path(forResource: filename, ofType: "txt") {
        if let changeContentsToString = try? String(contentsOfFile: filePath) {
            allWords = changeContentsToString.components(separatedBy: "\n")
          
            for word in allWords {
                if word.contains("UU") {
                    wordsWithUU.append(word)
                } else {
                    allWords = ["Error"]
                }
            }
        }
    }
    return wordsWithUU
}

print(wordsContainingUU(filename: "sowpods"))

