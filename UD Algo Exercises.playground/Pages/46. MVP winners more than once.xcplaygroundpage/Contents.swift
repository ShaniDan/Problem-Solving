/* Print out a ranking of who has won the MVP more than once, by times won, e.g. this output:
    - 6 times: Michael Jordan
    - 3 times: Shaquille O'Neal, LeBron James
    - 2 times: <etc> */
/* - */

import Foundation

func solution() -> [String] {
    
    /* MARK: Step 1:
     1. Parsing CSV and declaring empty variables */
    
    var nbaFinalsStrings = readCsv(name: "nba_finals").dropFirst()
    let nbaFinal = nbaFinalsStrings.map { Game(line: parseCSV(line: $0.trimmingCharacters(in: .newlines))) }
    print(nbaFinal)
    var result = [String]()
    var mvps: [String: Int] = [:]
    for game in nbaFinal {
        print(game.winner)
    }
    /* MARK: Step 2:
     1. Figure out the counts */

    for game in nbaFinal where !game.mvp.isEmpty {
        mvps[game.mvp, default: 0] += 1
//        print(mvps)
    }

    /* MARK: Step 3:
     1. Arrange the mvps by count
     2. Add intermediate dictionary [Count: [MVP]]
     3. Loop through mvps
     4. for each count greater than 1, append the mvp to the dictionary[count] */

    var countMvps: [Int: [String]] = [:]
    for (mvp, count) in mvps {
        if count > 1 {
            countMvps[count, default: [String]()].append(mvp)
        }
    }
    /* MARK: Step 4:
     1. Format the counts - mvps in the way the question asked for
     2. Sort dictionary by count
     3. Loop through sorted dictionary
     4. Join mvp array with commas
     5. Add that to a string "X time: "
     6. Append the whole thing to the result array*/

    for (count, mvpArray) in countMvps.sorted(by: { $0.key > $1.key }) {
        let mvpList = mvpArray.joined(separator: ", ")
        let line = "- \(count) times: \(mvpList)"
        result.append(line)
    }
    return result
}
print(solution().joined(separator: "\n"))

