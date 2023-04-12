//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// MARK: Computers have two resources, processing time and memory space. In order to understand why one data structure or algorithm is better than another, we need a way to measure how fast they run, how much memory they use, and ultimately how these both scale as the quantity of data increases. Big O is the most common way of measuring these. How much processing time an operation takes is referred to as time complexity. How much memory it uses is called space complexity. Before you dive into the study of data structures and algorithms you should have a basic understanding of Big O. Read through the article below or watch the video. Take a look at the items under Resources as well.
// 

func bigO() {
    // MARK: O(1)
    let name = "DevTechie"
    
    // MARK: O(n) - linear
    for i in 0...10 {
        print(i)
    }
    
    // MARK: O(n^2) = O of power of 2 - quadratic
    for i in 0...2 {
        for j in 0...2 {
            print(i, j)
        }
    }
    
    // MARK: O(n^m) - exponential
    for i in 0...2 {
        for j in 0...2 {
            for k in 0...2 {
                for l in 0...2 {
                    print(i, j)
                }
            }
        }
    }
    // MARK: O(log n)
    
    // MARK: binary search
}

// O(1)
func constantTime(_ n: Int) -> Int {
    var numberOfOperations = 0
    numberOfOperations += 1
    return numberOfOperations
}

// O(log n)
func logarithmicTime(_ n: Int) -> Int {
    var numberOfOperations = 0
    var n = n
    while n > 0 {
        n = n / 2
        numberOfOperations += 1
    }
    return numberOfOperations
}


// O(2n)
func linearTime(_ n: Int) -> Int {
    var numberOfOperations = 0
    for _ in 0..<n {
        numberOfOperations += 1
    }
    for _ in 0..<n {
        numberOfOperations += 1
    }
    return numberOfOperations
}

// O(n log n)
func nLogNTime(_ n: Int) -> Int {
    var numberOfOperations = 0
    for _ in 0..<n {
        var m = n
        while m > 0 {
            m = m / 2
            numberOfOperations += 1
        }
    }
    return numberOfOperations
}

// O(n^2)
func quadraticTime(_ n: Int) -> Int {
    var numberOfOperations = 0
    for _ in 0..<n {
        for _ in 0..<n {
            numberOfOperations += 1
        }
    }
    return numberOfOperations
}

// O(2^n)
func exponentialTime(_ n: Int) -> Int {
    var numberOfOperations = 1
    for _ in 0..<n {
        numberOfOperations *= 2
    }
    return numberOfOperations
}

// O(n!)
func factorialTime(_ n: Int) -> Int {
    var numberOfOperations = 1
    var m = n
    while m > 0 {
        numberOfOperations *= m
        m -= 1
    }
    return numberOfOperations
}


func test(name: String, handler: (Int) -> Int) {
    print("\(name):")
    for i in 1...10 {
        let operations = handler(i)
        print("n=\(i), operations=\(operations)")
    }
    print()
}

test(name: "Constant", handler: constantTime)
test(name: "Logarithmic", handler: logarithmicTime)
test(name: "Linear", handler: linearTime)
test(name: "N Log N", handler: nLogNTime)
test(name: "Quadratic", handler: quadraticTime)
test(name: "Expotential", handler: exponentialTime)
test(name: "Factorial", handler: factorialTime)
