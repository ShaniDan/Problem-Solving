// What are the longest baby names in the top 40 baby names for 2020? Make sure you can handle if there’s a tie.
/* -
 */

import Foundation

func solution() -> [String] {
    var babyNames = readTxt(name: "babynames2020short")
    
    var results = [String]()
    for babyName in babyNames {
        if results.isEmpty {
            results = [babyName]
        } else if results[0].count < babyName.count {
            results = [babyName]
        } else if results[0].count == babyName.count {
            results.append(babyName)
        }
    }
    return results
}
print(solution())
