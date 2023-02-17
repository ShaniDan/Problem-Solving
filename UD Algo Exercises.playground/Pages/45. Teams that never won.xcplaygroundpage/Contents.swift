// Which teams have made it to the NBA finals but have never won?
/* - compare column 1 and 2 and add unmatched teams in the loser column to the result
   - if loser teams doesn't appear in winner column add the loser to the result
   - 
 */

import Foundation

func solution() -> [String] {
    var nbaFinals = readCsv(name: "nba_finals").dropFirst()
    var result = [String]()
    var winnersList = [String]()
    for line in nbaFinals {
        let lineCsv = line.components(separatedBy: ",")
        let winner = lineCsv[1]
        winnersList.append(winner)
    }
    
    for line in nbaFinals {
        let lineCsv = line.components(separatedBy: ",")
        let loser = lineCsv[2]
        if !winnersList.contains(loser) && !result.contains(loser) {
            result.append(loser)
        }
    }
    return result
}
print(solution())
