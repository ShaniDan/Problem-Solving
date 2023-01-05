// What are all of the names that were top 40 baby names in both 1880 and 2020?

import Foundation

func solution() -> [String] {
    var babyNames1880 = readTxt(name: "babynames1880short")
    var babyNames2020 = readTxt(name: "babynames2020short")
    var result = [String]()
    
    for babyName18 in babyNames1880 {
        for babyName20 in babyNames2020 {
            if babyName18 == babyName20 {
                result.append(babyName20)
            }
        }
    }
    return result
}
print(solution())
