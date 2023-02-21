// What movies on this list were distributed by DreamWorks?

import Foundation
// create a function that takes a distrubutorName as an argument
func solution(distributorName: String, distributorName1: String) -> [String] {
    var topMovies = readCsv(name: "top_movies").filter { !$0.isEmpty }
    var result = [String]()
// loop through the topMovies and separate the lines by commas
    for line in topMovies {
        let commaLine = line.components(separatedBy: ",")
// create two constants for the title and the distributor
        let title =  commaLine[0]
//        print(title)
        let distributor = commaLine[1]
//        print(distributor)
// check if the distributor is the as the distributorName "DreamWorks"
        if distributor == distributorName
            || distributor == distributorName1 {
            result.append(title)
        }
    }
    return result
}
print(solution(distributorName: "DreamWorks", distributorName1: "DreamWorks Distribution"))


