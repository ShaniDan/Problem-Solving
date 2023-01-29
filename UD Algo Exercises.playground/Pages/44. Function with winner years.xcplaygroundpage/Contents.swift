// Write a function that takes as an argument a team name and returns an array of all of the years the team has won the NBA finals.

import Foundation

func solution(teamName: String) -> [String] {
    var nbaFinals = readCsv(name: "nba_finals")
    var result = [String]()
    
    for teams in nbaFinals {
        if teams.contains(teamName) {
            result.append(teams)
        }
    }
    return result
}
print(solution(teamName: "Los Angeles Lakers"))
