import Foundation

public func readTxt(name: String) -> [String] {
    var words = [String]()
    if let path = Bundle.main.path(forResource: name, ofType: "txt") {
        if let changeContents = try? String(contentsOfFile: path) {
            words = changeContents.components(separatedBy: "\n")
        }
    }
    return words
}

public func readCsv(name: String) -> [String] {
    var words = [String]()
    if let path = Bundle.main.path(forResource: name, ofType: "csv") {
        if let changeContents = try? String(contentsOfFile: path) {
            words = changeContents.components(separatedBy: "\n")
        }
    }
    return words
}

public func readGameInfo(name: String) -> [GameInfo] {
    var words = [String]()
    if let path = Bundle.main.path(forResource: name, ofType: "csv") {
        if let changeContents = try? String(contentsOfFile: path) {
            words = changeContents.components(separatedBy: "\n")
        }
    }
    let games = words.map { GameInfo(line: $0) }
    return games
}

public struct GameInfo {
    public let year: String
    public let winner: String
    public let loser: String
    public let score: String
    public let mvp: String
    
    init(line: String) {
        let columns = line.components(separatedBy: ",")
        year = columns[0]
        winner = columns[1]
        loser = columns[2]
        score = columns[3]
        mvp = columns[4]
    }
}
