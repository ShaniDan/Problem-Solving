// What are all of the words containing UU?

import Foundation

func solution () -> [String] {
    var word = readTxt(name: "sowpods")
    
    let result = word.filter {word in word.contains("UU")}
    return result
}
print(solution())
