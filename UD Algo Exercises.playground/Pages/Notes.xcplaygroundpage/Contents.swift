import Foundation

//func solution() -> [String] {
//    var sowpodWords = readTxt(name: "sowpods")
//    var result = [String]()
//
//    for word in 0..<sowpodWords.count - 1 {
//        let currentWord = sowpodWords[word]
//        let nextWord = sowpodWords[word + 1]
//        if currentWord == nextWord {
//            result.append(String(word))
//        }
//    }
//    return result
//}
//print(solution())


//let words: [String] = ["apple", "banana", "cherry", "date"]
//for i in 0..<words.count - 1 {
//    let currentWord = words[i]
//    let nextWord = words[i + 1]
//    if currentWord == nextWord {
//        print("\(currentWord) is the same as \(nextWord)")
//    } else {
//        print("\(currentWord) is different from \(nextWord)")
//    }
//}


//let words: [String] = ["apple", "banana", "bookkeeper", "cheese", "coffee", "success"]
//for word in words {
//    var hasOnlyDoubleChars = true
//    for (char1, char2) in zip(word, word.dropFirst()) {
//        if char1 != char2 || !char1.isLetter || !char2.isLetter || word.filter({ $0 == char1 }).count != 2 {
//            hasOnlyDoubleChars = false
//            break
//        }
//    }
//    if hasOnlyDoubleChars {
//        print("\(word) contains only double characters")
//    }
//    guard word.count > 1 else {
//        hasOnlyDoubleChars = false
//        break
//    }
//}

let array = ["APPLE", "GLASS"]
let result = array.map { string in
    let charArray = string.map { String($0) }
    return charArray.joined(separator: ", ")
}
print(result)


