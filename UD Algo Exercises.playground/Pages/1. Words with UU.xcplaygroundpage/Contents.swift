// What are all of the words containing UU?

import Foundation

func solution () -> [String] {
    
    // we make a new variable called word and assign readTxt to it that has sowpods file.
    
    var word = readTxt(name: "sowpods") // O(n)
    //
    var result = [String]()
    
    // instead of filter you can use for loop.
    // iterate through the variable word, loop over the variable word
    for char in word {
        // check if the character contains letter UU and if it contains add it to the empty variable result
        if char.contains("UU") {
            result.append(char)
        }
    }
    
    // higher order functions filter, map, reduce
    
//    let result = word.filter { // O(n)
//        // modifier contains, 
//        $0.contains("UU") // O(k)
//    }
    // return the result
    return result
}
print(solution())

// O( n + n * k )
// O( 2n * k )
// O( n * k )
