// What are all of the compound words? These are words made up of 2 smaller words. For example, “SNOWMAN” is a compound word made from “SNOW” and “MAN”, and “BEACHBALL” is a compound word made from “BEACH” and “BALL”.

/*
 - loop over the words
 - how can I check if the word being iterated combined with the next word appers as one word somewhere in the list?
 - create two-word combinations by adding words together.
 - check if any of the combinations match any word in the list
 */
import Foundation

//func solution() -> [String] {
//    var sowpodsWords = readTxt(name: "sowpods")
//    let wordSet = Set(sowpodsWords)
//
//    var result = [String]()
//    var twoWordCombinations = [String]()
//    for word1 in 0..<sowpodsWords.count {
//        // loop over subsequent words
//        for word2 in 0..<sowpodsWords.count {
//            // add the two together
//               let combinedWords = sowpodsWords[word1] + sowpodsWords[word2]
////            print(combinedWords)
//            // check if the compound word exists in the dictionary
//            if wordSet.contains(combinedWords) {
//                // if so, add it to result
//                print(combinedWords)
//                result.append(combinedWords)
//            }
//        }
//    }
//    return result
//}
//print(solution())

func breakIntoParts(_ string: String) -> [[String]] {
    guard string.count > 3 else { return [] }
    var result: [[String]] = []
    let letters = string.map { String($0) }
    for index in 1..<letters.count - 2 {
        let firstHalf = letters[0...index].joined()
        let secondHalf = letters[index+1..<letters.count].joined()
        result.append([firstHalf, secondHalf])
    }
    return result
}

func solution2() -> [String] {
    var sowpodsWords = readTxt(name: "sowpods")
    let wordSet = Set(sowpodsWords)

    var result = [String]()
    
    // Loop through each word
    for word in sowpodsWords {
        // Break that word into various chunks of at least two letters
        let chunks = breakIntoParts(word)
        // loop through the chunks and see of both halves exist in the dictionary
        for word2 in chunks {
            if wordSet.contains(word2[0]) && wordSet.contains(word2[1]) {
                // if so, add it to result
                result.append(word)
            }
        }
    }
    return result
}
print(solution2())

//print(breakIntoParts("ABA"))
//print(breakIntoParts("ABASH"))
//print(breakIntoParts("ABSTRICTIONS"))
// ABASH
// [["AB", "ASH"]
// ["ABA", "SH"]]

// ABSTRICTIONS
// AB | STRICTIONS
// ABS | TRICTIONS
// ABST | RICTIONS
// ABSTR | ICTIONS

