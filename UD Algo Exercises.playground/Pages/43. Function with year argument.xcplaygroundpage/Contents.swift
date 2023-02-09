// Write a function that takes as an argument a year and returns the winner of the NBA finals that year.

import Foundation

func solution(_ targetYear: String) -> String {
    var nbaFinals = readCsv(name: "nba_finals")
    for line in nbaFinals {
        let data = line.components(separatedBy: ",")
        let year = data[0]
        let winner = data[1]
        if year == targetYear {
            return winner
        }
    }
    return "No winner for that year"
}
print(solution("2005"))
