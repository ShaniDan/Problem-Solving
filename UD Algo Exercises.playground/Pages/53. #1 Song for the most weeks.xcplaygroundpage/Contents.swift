// What song was the #1 song for the most weeks of 2000, who was the artist, and how many weeks was it at #1?

import Foundation

var greeting = "Hello, playground"

func solution() -> String {
    var billBoardSongString = readCsv(name: "billboard100_2000").filter {!$0.isEmpty}.dropFirst()
    var billBoardSongs = billBoardSongString.map { Songs(line: parseCSV(line: $0))}
    var rankOneSong = [Songs: Int]()
    var result: String = ""
/*  MARK: Step 1
          1.Loop through the billBoardSongs
          2.If statement is #1 rank songs
          3.Add the songs to the rankOneSong dictionary
          4.Increment the count of values */
    for line in billBoardSongs {
        if line.rank == 1 {
            rankOneSong[line, default: 0] += 1
        }
    }
    /* MARK: Step 2
             1. Find the song that appeared the most
             2. Replace the count value with the artist ?*/
    let SongThatAppearedTheMost = rankOneSong.max {$0.value < $1.value}
    /* MARK: Step 3
             1. Figure out how to show the song, artist and the number of weeks it was #1 */
   guard let SongThatAppearedTheMost = SongThatAppearedTheMost else { return "No Song Found" }
    result = "\(SongThatAppearedTheMost.key.song), \(SongThatAppearedTheMost.key.artist), \(SongThatAppearedTheMost.value)"
    return result
}
print(solution())
