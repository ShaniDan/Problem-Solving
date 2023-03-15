// What is the earliest year on this list, and what were the films from that year?
/* - empty dictionary for the year
   - find the earliest year by using min in a dictionary
 */
import Foundation

func solution() -> [String] {
    
    // MARK: Step 1: Parsing CSV and declaring empty variables
    var topMovieStrings = readCsv(name: "top_movies").filter {!$0.isEmpty}.dropFirst()
    let topMovies = topMovieStrings.map { Movie(line: parseCSV(line: $0)) }
    var dictionaryYear = [Int: [String]]()
    var result = [String]()
    
    // MARK: Step 2
    for movie in topMovies {
        dictionaryYear[movie.releaseYear, default: []].append(movie.title)
    }
    if let minYear = dictionaryYear.min(by: { $0.key < $1.key }) {
        result = minYear.value
    }
    
//  need to figure out how to add the films to the values into the dictionary that correspond with the earliest year

    return result
}
print(solution())
