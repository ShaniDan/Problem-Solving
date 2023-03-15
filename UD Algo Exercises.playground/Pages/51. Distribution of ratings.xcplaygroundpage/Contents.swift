// What is the distribution of ratings? (How many are PG, PG-13, R, etc.?)

import Foundation

func solution() -> [String:Int]{
    var topMovieStrings = readCsv(name: "top_movies").filter{!$0.isEmpty}.dropFirst()
    var dictionaryRating = [String:Int]()
    let topMovies = topMovieStrings.map {
        Movie(line: parseCSV(line: $0.trimmingCharacters(in: .newlines)))
    }
    for movie in topMovies {
        dictionaryRating [movie.rating, default: 0] += 1
    }
  return dictionaryRating
}
print(solution())
