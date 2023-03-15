// What are all of the words containing UU?

import Foundation

func solution () -> [String] {
    var word = readTxt(name: "sowpods")
    
    let result = word.filter {$0.contains("UU")}
    return result
}
print(solution())
