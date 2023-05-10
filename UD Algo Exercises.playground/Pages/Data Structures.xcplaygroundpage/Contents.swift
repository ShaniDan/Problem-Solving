//: [Previous](@previous)

import Foundation
import UIKit
// MARK: Data structures are simply a way of storing data. Each of these ways of storing data was conceived to solve some problem. The basic data structures are listed below:

// MARK: STACK
// LIFO = Last in first out
class Stack<Item> {
    private var items: [Item] = []
    
    // Peek
    func peek() -> Item {
        guard let topItem = items.last else { fatalError("The stack is empty!") }
        return topItem
    }
    
    // Pop
    func pop() -> Item {
        return items.removeLast()
    }
    
    // Push
    func push(item: Item) {
        items.append(item)
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        // header
        let top = "--Stack---\n"
        // footer
        let bottom = "\n---------"
        
        let elements = items
            .map { String(describing: $0) }
            .reversed()
            .joined(separator: "\n")
        return top + elements + bottom
    }
    
    func printStack() {
        print(description)
    }
}

var stack = Stack<String>()
stack.push(item: "One")
stack.push(item: "Two")
stack.push(item: "Three")

stack.peek()

stack.printStack()

// MARK: QUEUE
// FIFO = First in and first out

struct Queue<Item> {
    
}
// Linked List
// Tree
// Hash Table
// Graph
