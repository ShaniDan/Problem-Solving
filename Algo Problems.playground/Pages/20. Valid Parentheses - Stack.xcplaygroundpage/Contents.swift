// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid. An input string is valid if: Open brackets must be closed by the same type of brackets. Open brackets must be closed in the correct order. Every close bracket has a corresponding open bracket of the same type.

import Foundation


    func isValid(_ s: String) -> Bool {
        for i in s {
            let stringI = String(i)
            if stringI == "[]" || stringI == "{}" || stringI == "()" {
                
            }
        }
         return true
    }


// "{ func([a], b) + func2(x, y) }" - valid
// "func(a],b)" - invalid
// "func(a,b" - invalid
// "func([a, b)] + func2(x, y)" - invalid

// Loop through string
// Check if it is a special character
// if it is an open bracket, push it on the stack
// if it is a closing bracket, pop the last element off the stack
    // check if they match, continue if so
    // if not, return false
// At end of loop, make sure stack is empty
    // return true if so
