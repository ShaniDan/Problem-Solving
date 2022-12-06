import Foundation

public func readTxt(filename: String) -> [String] {
    var txtFile = [String]()
    if let path = Bundle.main.path(forResource: filename, ofType: "txt") {
        if let changeContents = try? String(contentsOfFile: path) {
            txtFile = changeContents.components(separatedBy: "\n")
            
        }
    }
    return txtFile
}
