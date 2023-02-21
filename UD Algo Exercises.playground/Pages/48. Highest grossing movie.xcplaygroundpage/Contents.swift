//What is the highest grossing movie from Universal Pictures, domestically?

import Foundation
// create a function that takes distributorName as an argument
func solution(distributor: String) -> [String] {
    var topMovies = readCsv(name: "top_movies").filter { !$0.isEmpty }
    var result = [String]()
    var UPGross = [String]()
// loop through the topMovies and separate the lines by commas
    for line in topMovies {
        let commaLine = line.components(separatedBy: ",")
// create 2 constants for distributor and US sales
        let currentDistributor = commaLine[1]
        let USSales = commaLine[3]
// add the gross values for the Universal Pictures to the UPGross
        if currentDistributor == distributor {
            UPGross.append(USSales)
        }
    }
// loop through the topMovies and find the highest gross in the UPGross using max and add the movie (title) to the result
    let lines = topMovies.map { $0.components(separatedBy: ",")}
    let sortedLines = lines.sorted { (Int($0[3]) ?? 0)  > (Int($1[3]) ?? 0) }
    sortedLines.forEach { print($0) }
        
    if let highestGross = UPGross.max(by:{$1.count > $0.count}) {
        for line1 in topMovies {
            let commaLine1 = line1.components(separatedBy: ",")
            let title = commaLine1[0]
            let gross = commaLine1[3]
            if highestGross == gross {
                result.append(title)
            }
        }
    }
    return result
}
print(solution(distributor: "Universal Pictures"))

