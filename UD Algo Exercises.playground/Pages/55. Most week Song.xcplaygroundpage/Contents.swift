// What song(s) were on the charts (anywhere on the charts) for the most weeks of 2000?

import Foundation

func solution () -> Any {
    var billBoardSongsString = readCsv(name: "billboard100_2000")
    var billBoardSongs = billBoardSongsString.map {Songs(line: parseCSV(line: $0))}
    var songDictionary = [String: Int]()
    for line in billBoardSongs {
        songDictionary[line.song, default: 0] += 1
    }
//    print(songDictionary.sorted(by: {$0.value < $1.value}))
    let result = songDictionary.max(by: {$0.value < $1.value})
    return result!
}
print(solution())
