// Write a function that takes as an argument a year and returns the winner of the NBA finals that year.

import Foundation

func solution(_year: String) -> String {
    var nbaFinals = readCsv(name: "nba_finals")
    var result = ""
    for winner in nbaFinals {
        if winner.contains(_year) {
            result.append(winner)
        }
    }
    return result
}
print(solution(_year: "2010"))
