// What are all of the words containing UU?

import Foundation

func solution() -> [String] {
    var words = readTxt(name: "sowpods")
    var results = words.filter { // O(n)
        word in word.contains("X") // O(k)
        && word.contains("Y") // O(k)
        && word.contains("Z") // O(k)
    }
    return results
}
print(solution())

// O( n * (k + k + k) )
// O( n * 3k )
// O( n * k )
