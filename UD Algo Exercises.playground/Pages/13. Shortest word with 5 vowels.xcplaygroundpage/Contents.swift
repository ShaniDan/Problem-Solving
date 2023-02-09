// What is the shortest word that contains all 5 vowels?

import Foundation

func solution() -> Any {
    var words = readTxt(name: "sowpods")
    var results = [String]()
    
    for word in words {
        if word.contains("A")
            && word.contains("E")
            && word.contains("I")
            && word.contains("O")
            && word.contains("U")
            && word.contains("Y") {
            results.append(word)
        }
    }
    let sortedResults = results.sorted {$0.count < $1.count}
    let shortest = sortedResults.first!.count
    return sortedResults.filter{$0.count == shortest}
}
print(solution())

