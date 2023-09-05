import UIKit

// https://www.fullstack.cafe/interview-questions/stacks

/*
 Giving a String, write a function that reverses the String
 using a stack.
 */

func solution(_ text: String) -> String {
    var characters = Array(text)
    
    // Create stack
    var result = [String]()
    
    // Push characters
    for c in characters {
        result.append(String(c))
        
    }
    
    // Pop characters
    for i in 0..<result.count {
        characters[i] = Character(result.popLast()!)
    }
    return String(characters)
}

solution("abc") // cba
solution("Would you like to play a game?")

