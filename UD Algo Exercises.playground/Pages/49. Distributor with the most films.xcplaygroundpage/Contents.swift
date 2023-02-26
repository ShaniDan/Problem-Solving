// What distributor has the most films on this list?

import Foundation

func solution() -> Optional<(key: String, value: Int)> {
    var topMovies = readCsv(name: "top_movies").filter{!$0.isEmpty}
    var dictDistributor = [String: Int]()
    for line in topMovies {
        var arrayLine = line.components(separatedBy: ",")
        var distributor = arrayLine[1].trimmingCharacters(in: .whitespacesAndNewlines)
        dictDistributor [distributor, default: 0] += 1
    }
    let result = dictDistributor.max { $0.value < $1.value }
    return result
}
print(solution() ?? 0 as Any)
