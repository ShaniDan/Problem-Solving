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

struct Queue<T> {
    private var elements: [T] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    mutating func enqueue(_ element: T) {
        elements.append(element)
    }
    
    mutating func dequeue() -> T? {
        guard !isEmpty else {
            return nil
        }
        return elements.removeFirst()
    }
    
    func peek() -> T? {
        return elements.first
    }
}

// Example:

func hotPotato(players: [String], passes: Int) -> String {
    var queue = Queue<String>()
    
    for player in players {
        queue.enqueue(player)
    }
    
    while queue.count > 1 {
        for _ in 1...passes {
            if let front = queue.dequeue() {
                queue.enqueue(front)
            }
        }
        if let eliminatedPlayer = queue.dequeue() {
            print("Eliminated:", eliminatedPlayer)
        }
    }
    
    return queue.dequeue() ?? ""
}

let players = ["Alice", "Bob", "Charlie", "Dave", "Eve"]
let lastPerson = hotPotato(players: players, passes: 3)
print("Winner:", lastPerson)


// MARK: LINKED LIST

class Node<T> {
    var value: T
    var next: Node?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T: Equatable> {
    private var head: Node<T>?
    
    // Insertion at the beginning of the linked list
    func insert(value: T) {
        let newNode = Node(value: value)
        newNode.next = head
        head = newNode
    }
    
    // Insertion at the end of the linked list
    func append(value: T) {
        let newNode = Node(value: value)
        
        if head == nil {
            head = newNode
        } else {
            var current = head
            while current?.next != nil {
                current = current?.next
            }
            current?.next = newNode
        }
    }
    
    // Deletion by value
    func delete(value: T) {
        if head?.value == value {
            head = head?.next
        } else {
            var current = head
            var previous: Node<T>?
            
            while current != nil && current?.value != value {
                previous = current
                current = current?.next
            }
            
            previous?.next = current?.next
        }
    }
    
    // Search by value
    func search(value: T) -> Node<T>? {
        var current = head
        
        while current != nil && current?.value != value {
            current = current?.next
        }
        
        return current
    }
    
    // Print the linked list
    func printList() {
        var current = head
        
        while current != nil {
            print(current!.value, terminator: " ")
            current = current?.next
        }
        print(printList())
    }
}


// Tree
// Hash Table
// Graph
