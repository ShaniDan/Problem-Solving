/* Print out a ranking of who has won the MVP more than once, by times won, e.g. this output:
    - 6 times: Michael Jordan
    - 3 times: Shaquille O'Neal, LeBron James
    - 2 times: <etc> */
/* - */

import Foundation

func solution() -> [String] {
    var nbaFinals = readCsv(name: "nba_finals").dropFirst()
    var result = [String]()
    var mvps: [String: Int] = [:]
    // Figure out the counts
    for line in nbaFinals {
        let lineComponents = line.components(separatedBy: ",")
        var mvp = lineComponents[4].trimmingCharacters(in: .whitespacesAndNewlines)
        mvps[mvp, default: 0] += 1
        
    }
    
    // Arrange the mvps by count
    // Add intermediate dictionary [Count: [MVP]]
    var countMvps: [Int: [String]] = [:]
    // Loop through mvps
    for (mvp, count) in mvps {
        // for each count greater than 1, append the mvp to the dictionary[count]
        if count > 1 && !mvp.isEmpty {
            countMvps[count, default: []].append(mvp)
        }
    }

    // Format the counts - mvps in the way the question asked for
    // Sort dictionary by count
    // Loop through sorted dictionary
    for (count, mvpArray) in countMvps.sorted(by: { $0.key > $1.key }) {
        // join mvp array with commas
        let mvpList = mvpArray.joined(separator: ", ")
        // add that to a string "X time: "
        let line = "- \(count) times: \(mvpList)"
        // append the whole thing to the result array
        result.append(line)
    }
    
    return result
}
print(solution().joined(separator: "\n"))

