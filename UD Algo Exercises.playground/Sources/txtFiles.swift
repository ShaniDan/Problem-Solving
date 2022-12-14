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
