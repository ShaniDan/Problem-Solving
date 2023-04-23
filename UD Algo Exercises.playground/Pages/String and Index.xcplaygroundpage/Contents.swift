//: [Previous](@previous)

import Foundation

// MARK: STRINGS & CHARACTERS

// A Swift string is a series of characters, words, text or other data in double quotes ("") of the String type
// A Swift character is similar to a string except it usually consists of one character

// Create string
var string1 = "hello"

// Create string with type stated explicitly
var string2: String = "hello again"

// Create empty string
var string3 = ""

// Create empty string with initializer syntax
var string4 = String()

// Access first character (notice we use the subscript syntax [])
var string5 = "It's gonna be a phenomenal day!"
print(string5[string5.startIndex])

// Access last character
var string6 = "Your friendly neighborhood Spider-Man !"
// note that the endindex is the position after the last character in a String
print(string6[string6.index(before: string6.endIndex)])

// Access some characters in the middle
var string7 = "abcdefghijklmnopqrstuvwxyz"
var string7Index = string7.index(string7.startIndex, offsetBy: 0)
print(string7[string7Index])


// Access a set of characters (substring using range)
var string8 = "Seize the day!"
// We reference the string8 and use .index
var startIndexString8 = string8.index(string8.startIndex, offsetBy: 6)
var endIndexString8 = string8.index(string8.endIndex, offsetBy: -5)
// We've created a variable and we've assigned a range to that variable
var string8Range = startIndexString8..<endIndexString8
var string8Substring = string8.substring(with: string8Range)
print(string8Substring)


// insert character(s) into string
var string9 = "Today, it is outside."
string9.insert(contentsOf: "nice ", at: string9.index(string9.startIndex, offsetBy: 13))
print(string9)

// remove character(s) from string
var string10 = "There is no big rush."
var startIndexString10 = string10.index(string10.startIndex, offsetBy: 12)
var endIndexString10 = string10.index(string10.endIndex, offsetBy: -5)
var string10Range = startIndexString10..<endIndexString10
string10.removeSubrange(string10Range)
print(string10)

// compare strings test for equality
var string11 = "Are we the same?"
var string12 = "Are we the same?"
if string11 == string12 {
    print("Yes, we are the same.")
} else {
    // print("Not the same")
}

// prefix
var array1 = ["Bengal tiger", "Siberian tiger", "Cheetah", "Jaguar", "Bengal tiger", "Bengal tiger", "Lion", "Siberian tiger", "Siberian tiger", "Siberian tiger", "Siberian tiger",]
var bengalTigersCount = 0
for i in array1 {
    if i.hasPrefix("Bengal") {
        bengalTigersCount += 1
    }
}
print(bengalTigersCount)

// suffix
var tigersCount = 0
for i in array1 {
    if i.hasSuffix("tiger") {
        tigersCount += 1
    }
}

// check for empty string
var string13 = ""
if string13.isEmpty {
    print("It's empty")
} else {
    print("Not empty")
}

// uppercase, lowercase
var string14 = "good morning"
var upperCase14 = string14.uppercased()
print(upperCase14)

var string15 = "GOOD MORNING"
var lowerCase15 = string15.lowercased()
print(lowerCase15)

// length of string
var alphabet = "abcd"
print(alphabet.count)

// count number of spaces in a string
var string16 = "words words words"
var countSpace16 = string16.filter {$0 == " "}.count
print(countSpace16)

// string interpolation
var superHero = "Superman"
var weakness = "Kryptonite"
var string17 = "\(superHero)'s weakness is \(weakness)"

// characters

var character1: Character = "a"
switch character1 {
    case "a", "A": print("You got the highest grade. ")
    case "b", "B": print("You got a B. That's pretty good")
    case "c", "C": print("Average")
    case "d", "D": print("Not so good.")
    case "e", "E": print("It's time to study!")
    default:
        print("Not a grade")
}
