// What is the shortest baby name in the top 40 baby names for 2020?
/* - Use min property to get the shortest name
   - QUESTION = how can I use min property for ties?
 */

import Foundation

func solution() -> String {
    var babyNames = readTxt(name: "babynames2020short")
    var result = babyNames.min { $0.count < $1.count && $0.count != 0 }
    return result!
}
print(solution())
 
