// What is the longest word where no letter is used more than once?

import Foundation

/*  1.Read sowpods txt
    2.Loop over the sowpods
    3.Find the longest words with the same count and add them into an empty array
    4.Loop over the longest words to find the word where np letter is used more than once
    5.Loop over the characters in the word
    5.Use .last to check if the current letter matches the next one */

func solution() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var longWord = [String]()
    var result = [String]()
    let sortedWords = sowpodsWords.sorted {$0.count > $1.count}
    let longest = sortedWords.first!.count
    var longestWords = sortedWords.filter{$0.count == longest}
   print(longestWords)
    for word in longestWords {
       var isUnique = true
        for char in word {
            if word.filter({$0 == char}).count > 1 {
                isUnique = false
                break
            }
        }
        if isUnique {
            result.append(word)
        }
    }
    return result
}
//print(solution())

func solution2() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    var longWord = [String]()
    var result = [String]()
    let sortedWords = sowpodsWords.sorted {$0.count > $1.count}
    let longest = sortedWords.first!.count
    var longestWords = sortedWords.filter{$0.count == longest}
   print(longestWords)
    for word in longestWords {
        
// MARK: This creates a Set from the array of characters obtained in the previous step. The Set will contain only unique elements, discarding any duplicates.
// MARK: In other words, the code Set(word.map{ $0 }) creates a Set that contains all the unique characters from the word string, effectively removing any duplicates. This is useful when you want to determine the distinct characters in a string, as Set guarantees that each element is unique within the set. This can be used, for example, to check for repeated characters in a word or find unique characters in a string. Note that the order of elements in the resulting Set is not guaranteed, as Set is an unordered collection type.
        
        let set = Set(word.map{ $0 })
        print(set)
        if set.count == word.count {
            result.append(word)
        }
    }
    return result
}
print(solution2())
