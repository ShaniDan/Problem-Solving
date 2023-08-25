//: [Previous](@previous)
/*
 MARK: Linked List
 */

import Foundation

class LLNode {
    var data: Int
    var next: LLNode?
    
    init(_ data: Int, _ next: LLNode? = nil) {
        self.data = data
        self.next = next
    }
}


class List {
    
    private var head: LLNode?

// MARK: Insert an element
    func insertFront(_ insertData: Int) {
        let newNode = LLNode(insertData)
        
        newNode.next = head
        head = newNode
    }
    
// MARK: Search for an element
    func contains(_ targetData: Int) -> Bool {
        var currentNode = head
        
        while currentNode != nil {
            if currentNode?.data == targetData {
                return true
            }
// not sure why do I need this?
            currentNode = currentNode?.next
        }
        return false
    }
    
// MARK: length of a linked list
    func length() -> Int {
        var currentNode = head
        var count = 0
        while currentNode != nil {
            currentNode = currentNode?.next
            count += 1
        }
        return count
    }
    
// MARK: Insert in Middle of Linked List
    func insert(data: Int, at position: Int) {
        if position <= 0 {
            insertFront(data)
            return
        }
        let newNode = LLNode(data)  // 3
        var currentNode = head      // 1
        for _ in 1..<position { // ??
            currentNode = currentNode?.next!
        }
        newNode.next = currentNode?.next
        currentNode?.next = newNode
    }
    
    func middle(data: Int) {
        // Figure out length of list
        let length = length()
        // position = length divided by two
        var position = length / 2
        // (if there is a remainder, add 1)
        if length % 2 == 1 { position += 1 }
        // insert the new node at that position
        insert(data: data, at: position)

    }
// MARK: Identical Linked List
/*
 Given two Singly Linked List of N and M nodes respectively. The task is to check whether two linked lists are identical or not.
 Two Linked Lists are identical when they have same data and with same arrangement too.
 */
    
// MARK: Print
    func printList() {
        if head == nil {
            print("Empty")
            return
        }
        var result = [Int]()
        var node = head
        result.append(node!.data)
        
        while node?.next != nil {
            result.append(node!.next!.data)
            node = node?.next
        }
        let wrapped = result.map { "(\($0))" }
        print(wrapped.joined(separator: " -> "))
    }
}

let linkList = List()
linkList.insertFront(50)
linkList.printList()
linkList.insertFront(40)
linkList.printList()
linkList.insertFront(20)
linkList.printList()
linkList.insertFront(10)
if linkList.contains(4) {
    print("true")
} else {
    print("false")
}
linkList.length()

print()
linkList.printList()
//linkList.insert(data: 3, at: 2)
linkList.middle(data: 30)
linkList.printList()




