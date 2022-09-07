import UIKit

// What are all of the words containing UU?
// Input: words -> array
// Output: words  -> array of words with UU


func wordsContainingUU(filename:String) -> [String] {
    var allWords = [String]()
    var wordsWithUU = [String]()
    if let startWordsPath = Bundle.main.path(forResource: filename, ofType: "txt") {
        if let startWords = try? String(contentsOfFile: startWordsPath) {
            allWords = startWords.components(separatedBy: "\n")
            for word in allWords {
                if word.contains("UU") {
                    wordsWithUU.append(word)
                }
            }
        } else {
            allWords = ["Unable to convert content of the file to an array with strings"]
            return allWords
        }
    }
    return wordsWithUU
}
print(wordsContainingUU(filename: "sowpods"))

