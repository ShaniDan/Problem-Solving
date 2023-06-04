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

// MARK: TREE

class TreeNode<T> {
    var value: T
    var leftChild: TreeNode?
    var rightChild: TreeNode?
    
    init(value: T) {
        self.value = value
    }
}

// Example usage
let rootNode = TreeNode(value: 1)
let leftChildNode = TreeNode(value: 2)
let rightChildNode = TreeNode(value: 3)

rootNode.leftChild = leftChildNode
rootNode.rightChild = rightChildNode

func inorderTraversal(_ root: TreeNode<Int>?) {
    guard let node = root else {
        return
    }
    
    inorderTraversal(node.leftChild)
    print(node.value)
    inorderTraversal(node.rightChild)
}

// Example usage
let rootNode1 = TreeNode(value: 1)
let leftChildNode1 = TreeNode(value: 2)
let rightChildNode1 = TreeNode(value: 3)

rootNode.leftChild = leftChildNode
rootNode.rightChild = rightChildNode

inorderTraversal(rootNode)

// MARK: HASH TABLE

struct HashTable<Key: Hashable, Value> {
    private typealias Element = (key: Key, value: Value)
    private typealias Bucket = [Element]
    private var buckets: [Bucket]
    
    private var count: Int = 0
    
    init(capacity: Int) {
        assert(capacity > 0, "Capacity must be a positive integer.")
        buckets = Array<Bucket>(repeating: [], count: capacity)
    }
    
    private func index(forKey key: Key) -> Int {
        let bucketIndex = abs(key.hashValue) % buckets.count
        return bucketIndex
    }
    
    mutating func setValue(_ value: Value, forKey key: Key) {
        let index = self.index(forKey: key)
        
        // Check if the key already exists in the hash table
        for (i, element) in buckets[index].enumerated() {
            if element.key == key {
                buckets[index][i].value = value
                return
            }
        }
        
        // Add a new key-value pair to the hash table
        buckets[index].append((key: key, value: value))
        count += 1
    }
    
    func getValue(forKey key: Key) -> Value? {
        let index = self.index(forKey: key)
        
        for element in buckets[index] {
            if element.key == key {
                return element.value
            }
        }
        
        return nil
    }
    
    mutating func removeValue(forKey key: Key) {
        let index = self.index(forKey: key)
        
        for (i, element) in buckets[index].enumerated() {
            if element.key == key {
                buckets[index].remove(at: i)
                count -= 1
                return
            }
        }
    }
    
    var isEmpty: Bool {
        return count == 0
    }
    
    var size: Int {
        return count
    }
}

// MARK: GRAPH

class Node1<T: Hashable> {
    let value: T
    var neighbors: [Node1]
    
    init(value: T) {
        self.value = value
        self.neighbors = []
    }
    
    func addNeighbor(_ neighbor: Node1) {
        neighbors.append(neighbor)
    }
}

class Graph<T: Hashable> {
    var nodes: [Node<T>]
    
    init() {
        self.nodes = []
    }
    
    func addNode(value: T) -> Node<T> {
        let node = Node(value: value)
        nodes.append(node)
        return node
    }
    
    func addEdge(from source: Node<T>, to destination: Node<T>) {
        source.addNeighbor(destination)
    }
    
    func breadthFirstSearch(startNode: Node<T>) -> [T] {
        var visited: Set<Node<T>> = []
        var queue: [Node<T>] = []
        var result: [T] = []
        
        queue.append(startNode)
        visited.insert(startNode)
        
        while !queue.isEmpty {
            let currentNode = queue.removeFirst()
            result.append(currentNode.value)
            
            for neighbor in currentNode.neighbors {
                if !visited.contains(neighbor) {
                    queue.append(neighbor)
                    visited.insert(neighbor)
                }
            }
        }
        
        return result
    }
}
