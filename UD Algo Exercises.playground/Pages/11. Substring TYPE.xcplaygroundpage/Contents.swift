// How many words contain the substring "TYPE”?
/* - does it need to show words with TYPE or only the subtrings?
   - if it only needs a subtring then need to change it.
 */

import Foundation

func solution() -> Int {
    var words = readTxt(name: "sowpods")
    var results = words.filter { word in
        word.contains("TYPE")
        && !word.hasPrefix("TYPE")
    }
    return results.count
}
print(solution())
