// What artist had the most songs chart in 2000, and what were those songs?

import Foundation

func solution () -> String {
    var billBoardSongsStrings = readCsv(name: "billboard100_2000").filter {!$0.isEmpty}.dropFirst()
    var billBoardSongs = billBoardSongsStrings.map {Songs(line: parseCSV(line: $0))}
    var mostSongArtist = [String: Int]()
    var countedSongs: Set<String> = []
    var songsPerArtist = [String: [String]]()
    var artistAndSong = [String: String]()
    var result = ""
    
    // Add all songs to a dictionary and increment the number of songs
    for line in billBoardSongs {
        if !countedSongs.contains(line.song) {
            mostSongArtist[line.artist, default: 0] += 1
            countedSongs.insert(line.song)
        }
        var songs = songsPerArtist[line.artist, default: []]
        if !songs.contains(line.song) {
            songs.append(line.song)
            songsPerArtist[line.artist] = songs
        }
    }
    let sortMostSongArtist = mostSongArtist.sorted(by: {$0.value < $1.value})
    let maxMostSongArtist = mostSongArtist.max {$0.value < $1.value}
//    print(sortMostSongArtist)
//    print(maxMostSongArtist)
    guard let artistWithMostSongs = songsPerArtist.max(by: { $0.value.count < $1.value.count }) else { return "No Result" }
    result = "\(artistWithMostSongs.key): \(artistWithMostSongs.value)"
//    for line in billBoardSongs {
//        if line.artist == "Destiny's Child" {
//            artistAndSong[line.song] = line.artist
//        }
//    }
//    for (song, artist) in artistAndSong {
//        result.append("\"\(song)\" - \(artist), ")
//    }
    
    return result
}
print(solution())
