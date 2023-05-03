// Which of the letters Q, X, and Z is the least common?
// It's returning optional. Is there any way for it not to return Optional

import Foundation

func solution() -> Any {
    var words = readTxt(name: "sowpods")
    
    var qxz = ["Q": 0,
               "X": 0,
               "Z": 0]
    
    for word in words {
        for character in word {
            let stringChar = String(character)
            if stringChar == "Q"
                || stringChar == "X"
                || stringChar == "Z" {
                qxz[stringChar]? += 1
            }
        }
    }
    print(qxz)
    return qxz.min{$0.value < $1.value}!
}
print(solution())
