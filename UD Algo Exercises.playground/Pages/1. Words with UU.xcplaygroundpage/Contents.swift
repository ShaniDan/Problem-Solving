// What are all of the words containing UU?

import Foundation

func solution () -> [String] {
    var word = readTxt(name: "sowpods") // O(n)
    
    let result = word.filter { // O(n)
        $0.contains("UU") // O(k)
    }
    return result
}
print(solution())

// O( n + n * k )
// O( 2n * k )
// O( n * k )
