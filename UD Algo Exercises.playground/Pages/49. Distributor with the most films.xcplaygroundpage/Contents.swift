// What distributor has the most films on this list?

import Foundation

func solution() -> Optional<(key: String, value: Int)> {
    var topMovieStrings = readCsv(name: "top_movies").filter{!$0.isEmpty}.dropFirst()
    var dictionaryDictributor = [String: Int]()
    
    let topMovies = topMovieStrings.map { Movie(line: parseCSV(line: $0)) }
    for movie in topMovies {
        dictionaryDictributor [movie.distributor, default: 0] += 1
    }
    
    let result = dictionaryDictributor.max { $0.value < $1.value }
    return result
}
print(solution() ?? 0 as Any)


