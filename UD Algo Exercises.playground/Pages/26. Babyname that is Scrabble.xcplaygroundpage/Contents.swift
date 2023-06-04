// There is at least one baby name from the top 40 baby names for 2020 that, when spelled backwards, is a valid Scrabble word. Find and print all such names.
// Solve this two ways: first with an array to hold the Scrabble words, and then with a dictionary (or set) to hold the Scrabble words. Use timer functions to measure how long it takes to complete this work under each implementation. Why is the time different?

import Foundation

func solution() -> [String] {
    var babyNames = readTxt(name: "babynames2020short")
    var scrabbleWords = readTxt(name: "sowpods")
    let setScrabbleWords = Set(scrabbleWords)
    var results = [String]()
    
    for babyName in babyNames {
        let reversedName = babyName.uppercased().reversed()
        if setScrabbleWords.contains(String(reversedName)) {
            results.append(babyName)
        }
    }
    return results
}
let startTime = CFAbsoluteTimeGetCurrent()
print(solution())
let endTime = CFAbsoluteTimeGetCurrent()
print("It took \(endTime - startTime) seconds")


