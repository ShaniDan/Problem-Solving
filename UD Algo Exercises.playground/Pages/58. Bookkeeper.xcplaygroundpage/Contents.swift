// What are all of the words that have at least 3 different double letters? For example, “BOOKKEEPER” is an answer to this question because it has a double-O, a double-K, and a double-E.

import Foundation

func solution() -> [String] {
    var sowpodWords = readTxt(name: "sowpods")
    var result = [String]()
    
    for word in sowpodWords {
        var count = 0
        for (index, _) in word.enumerated() {
            
            // MARK: getting the index of the String. Is there any other way?
            
            let indexZ = word.index(word.startIndex, offsetBy: index)
            print(indexZ)
            if index != 0 {
                let indexY = word.index(word.startIndex, offsetBy: index - 1)
            
                let character = word[indexZ]
               
                let prevCharacter = word[indexY]
               
                if character == prevCharacter {
                    count += 1
                }
            } else {
                continue
            }
            
        }
//        print(count)
        if count >= 3 {
            result.append(word)
            print(word, ">>>", count)
        }
        count = 0
    }
    return result
}
print(solution())
