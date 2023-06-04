import Foundation

// MARK: public function to read TXT files

public func readTxt(name: String) -> [String] {
    var words = [String]()
    if let path = Bundle.main.path(forResource: name, ofType: "txt") {
        if let changeContents = try? String(contentsOfFile: path) {
            words = changeContents.components(separatedBy: "\n")
        }
    }
    return words.filter { !$0.isEmpty }
}

// MARK: public func to read CSV files

public func readCsv(name: String) -> [String] {
    var lines = [String]()
    if let path = Bundle.main.path(forResource: name, ofType: "csv") {
        if let changeContents = try? String(contentsOfFile: path) {
            lines = changeContents.components(separatedBy: "\n")
        }
    }
    return lines
}

// MARK: public function to PARSE CSV files

public func parseCSV(line: String) -> [String] {
    var result: [String] = []
    var currentItem = ""
    var shouldTreatCommaAsSeparator = true
    for character in line {
        if character == "\"" {
            shouldTreatCommaAsSeparator.toggle()
        } else if character == "," && shouldTreatCommaAsSeparator {
            result.append(currentItem)
            currentItem = ""
        } else {
            currentItem.append(character)
        }
    }
    if !currentItem.isEmpty { result.append(currentItem) }
    return result
}

// MARK: struct with line "methods"? for NBA FINALS csv file

public struct Game {
    public let year: Int
    public let winner: String
    public let loser: String
    public let score: Int
    public let mvp: String
    
    public init(line: [String]) {
        self.year = Int(line[0]) ?? -1
        self.winner = line[1]
        self.loser = line[2]
        self.score = Int(line[3]) ?? -1
        if line.count > 4 {
            self.mvp = line[4]
        } else {
            self.mvp = ""
        }
    }
}

// MARK: struct with line "methods"? for TOP MOVIES csv file

public struct Movie {
    public let title: String
    public let distributor: String
    public let releaseYear: Int
    public let usSales: Int
    public let worldSale: Int
    public let runtime: String
    public let rating: String
    
    public init(line: [String]) {
        self.title = line[0]
        self.distributor = line[1]
        self.releaseYear = Int(line[2]) ?? -1
        self.usSales = Int(line[3]) ?? -1
        self.worldSale = Int(line[4]) ?? -1
        self.runtime = line[5]
        self.rating = line[6]
    }
}

// MARK: struct with line "methods"? for BILLBOARD csv file

public struct Songs: Hashable {
    public let rank: Int
    public let song: String
    public let artist: String
    public let lastWeek: Int
    public let peakRank: Int
    public let weeksOnBoard: Int
    public let date: String
    
    public init(line: [String]) {
        self.rank = Int(line[0]) ?? -1
        self.song = line[1]
        self.artist = line[2]
        self.lastWeek = Int(line[3]) ?? -1
        self.peakRank = Int(line[4]) ?? -1
        self.weeksOnBoard = Int(line[5]) ?? -1
        self.date = line[6]
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(song)
        hasher.combine(artist)
    }
    // Hashable and Equatable
    // lhs, rhs left and right hand sight
    public static func ==(lhs: Songs, rhs: Songs) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

public struct Animal {
    public let animalName: String
    public let animalType: String
    public let numLegs: Int
    public let sound: String
    
    public init(line: [String]) {
        self.animalName = line[0]
        self.animalType = line[1]
        self.numLegs = Int(line[2]) ?? -1
        self.sound = line[3]
    }
}

public struct Monster {

    public let head: Animal
    public let body: Animal
    public let name: String
    public let numLegs: Int
    public let sound: String

    public init?(head: Animal, body: Animal) {
        guard head.numLegs == body.numLegs else { return nil }
        self.head = head
        self.body = body
        self.name = "\(head.animalName)\(body.animalName)"
        self.sound = "\(head.sound)\(body.sound)"
        self.numLegs = head.numLegs
    }
}


