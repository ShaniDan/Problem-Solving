// Write a function that takes as an argument a team name and returns an array of all of the years the team has won the NBA finals.

import Foundation

func solution(teamName: String) -> [String] {
    var nbaFinals = readCsv(name: "nba_finals")
    var result = [String]()
    for line in nbaFinals {
        let commaData = line.components(separatedBy: ",")
        let year = commaData[0]
        let winner = commaData[1]
        if winner == teamName {
            result.append(year)
        }
    }
    return result
}
print(solution(teamName: "San Antonio Spurs"))
    
