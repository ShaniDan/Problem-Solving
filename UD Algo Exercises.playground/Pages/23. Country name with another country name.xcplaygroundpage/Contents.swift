// There is at least one country name that contains another country name. Find all of these cases.
/* - Loop through the country names
   - 
 */

import Foundation

func solution() -> [String] {
   var countries = readTxt(name: "countries")
    var results = [String]()
    for country1 in countries {
        for country2 in countries {
            if country1 == country2 {
                continue
            }
            if country2.contains(country1) {
                results.append(country2)
            }
        }
    }
    return results
}
print(solution())
