// What is the longest palindrome?
// input -> array
// output -> string of the longest palindrome

import UIKit

func longestPalindrome() -> String {
    var allWords = readTxt(name: "sowpods")
    var longestPalindromeWord = ""
  
            for word in allWords {
                if word == String(word.reversed()) {
                    if longestPalindromeWord.count == 0 {
                        longestPalindromeWord = word
                    } else if longestPalindromeWord.count < word.count {
                        longestPalindromeWord = word
                    }
                }
            }
    return longestPalindromeWord
}
print(longestPalindrome())

