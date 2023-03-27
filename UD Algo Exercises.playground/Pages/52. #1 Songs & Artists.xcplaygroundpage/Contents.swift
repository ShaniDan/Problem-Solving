/* Print out all of the #1 songs and the artists who made them. If a song was #1 for more than one week, only print it once. Example output:
     These were the number one songs of 2000:
     "Try Again" - Aaliyah
     "Say My Name" - Destiny's Child
     "What A Girl Wants" - Christina Aguilera
     "Maria Maria" - Santana Featuring The Product G&B
     "Smooth" - Santana Featuring Rob Thomas
     "Independent Women Part I" - Destiny's Child
 */

import Foundation

func solution() -> [String] {
    var billBoardSongString = readCsv(name: "billboard100_2000").filter {!$0.isEmpty}.dropFirst()
    let billBoardSongs = billBoardSongString.map { Songs(line: parseCSV(line: $0))}
    var result = [String]()
    var songs = [String: String]()
    for line in billBoardSongs {
        if line.peakRank == 1 {
            songs[line.song] = line.artist
        }
    }
   // MARK: Need to format the output result in a same wat as in the question example
    for (song, artist) in songs {
// "\"\(song)\" - \(artist)" = "\" escape character
        result.append("\"\(song)\" - \(artist)")
    }
    return result
}
print(solution().joined(separator: "\n"))
