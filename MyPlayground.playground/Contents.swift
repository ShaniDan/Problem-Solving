import UIKit

// What are all of the words that have all 5 vowels, in alphabetical order?
// Input: words -> array
// Output: words that have vowels in alphabetical -> array


func substringType(filename:String) -> Int{
    var allWords = [String]()
    var wordsWithSubstringType = [String]()
    if let startWordsPath = Bundle.main.path(forResource: filename, ofType: "txt") {
        if let startWords = try? String(contentsOfFile: startWordsPath) {
            allWords = startWords.components(separatedBy: "\n")
            for word in allWords {
                if word.contains("TYPE") {
                    wordsWithSubstringType.append(word)
                }
            }
        } else {
            allWords = ["error"]
        }
    }
    return wordsWithSubstringType.count
}
print(substringType(filename: "sowpods"))





