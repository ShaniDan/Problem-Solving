// What is the longest palindrome?
// input -> array
// output -> string of the longest palindrome

import UIKit

func longestPalindrome(filename: String) -> String {
    var allWords = [String]()
    var longestPalindromeWord = ""
    if let filePath = Bundle.main.path(forResource: filename, ofType: "txt") {
        if let changeContentsOfFile = try? String(contentsOfFile: filePath) {
            allWords = changeContentsOfFile.components(separatedBy: "\n")
            for word in allWords {
                if word == String(word.reversed()) {
                    if longestPalindromeWord.count == 0 {
                        longestPalindromeWord = word
                    } else if longestPalindromeWord.count < word.count {
                        longestPalindromeWord = word
                    }
                }
            }
        }
    }
    return longestPalindromeWord
}
print(longestPalindrome(filename: "sowpods"))
