import Foundation

/*
 - Anything to do with the front is O(1)
  - addFront/getFirst/deleteFirst
 - Anything you need to walk O(n)
  - addBack/getBack/deleteLast
 - No random access
 - Always the right size
 */

class Node {
    
// stored properties
    
    var data: Int
    var next: Node?

/* Initializer with a parameter list that are:
   1) data  - An Integer value that has the data to be stored in the data property of the 'Node'object
   2) next - An optional 'Node' object that is the next node in the linked list. It has a default value 'nil' that means if there is no given value when creating the new Node, the next is initialized to 'nil' by default.
 */
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

class LinkList {
    private var head: Node?
// Add Front = O(1) = fast
    func addFront(_ data: Int) {
        let newNode = Node(data)
        newNode.next = head
        head = newNode
    }

    func getFirst() -> Int? {
        if head == nil {
            return nil
        }
        return head!.data
    }
// addBack is O(n) - O to the n - linear time
    func addBack(_ data: Int) {
        let newNode = Node(data)
        
        if head == nil {
            head = newNode
            return
        }
        
        var node = head!
// linear time because it's checking everything single next node
        while(node.next != nil) {
            node = node.next!
        }
        node.next = newNode
    }

    func getLast() -> Int? {
        
        if head == nil {
            return nil
        }
        
        var node = head!
        while(node.next != nil) {
            node = node.next!
        }
        return node.data
    }

    func insert(position: Int, data: Int) {
        if position == 0 {
            addFront(data) // data is 8
            return
        }
        let newNode = Node(data) // newNode is 6
        var currentNode = head   // head is 8
        for _ in 0..<position - 1 { // ??
            currentNode = currentNode?.next! // currentNode is 8 and the next is 1
        }
        newNode.next = currentNode?.next
        currentNode?.next = newNode
    }
    
    func deleteFirst() {
        head = head?.next
    }

    func deleteLast() {
        var nextNode = head
        var previousNode: Node?
        while(nextNode?.next != nil) {
            previousNode = nextNode
            nextNode = nextNode?.next
        }
        previousNode?.next = nil
    }
    
    func delete(at position: Int) {
        if position == 0 {
            self.deleteFirst()
            return
        }
        var nextNode = head
        var previousNode: Node?
        for _ in 0..<position {
            previousNode = nextNode
            nextNode = nextNode?.next
        }
        previousNode?.next = nextNode?.next
    }
    
    var isEmpty: Bool {
        return head == nil
    }
    
    func clear() {
        head = nil
    }
    
    func printLinkedList() {
        if head == nil { return }
        
        var result = [Int]()
        var node = head
        result.append(node!.data)
        
        while node?.next != nil {
            result.append(node!.next!.data)
            node = node?.next
        }
        
        print(result)
    }
}

let linkedList = LinkList()
linkedList.addFront(3)
linkedList.addFront(4)
linkedList.addFront(1)
linkedList.addBack(7)
linkedList.addFront(8)

linkedList.printLinkedList()
linkedList.getFirst()
linkedList.getLast()
linkedList.insert(position: 3, data: 6)
linkedList.printLinkedList()
linkedList.deleteLast()
linkedList.printLinkedList()
linkedList.delete(at: 1)
linkedList.printLinkedList()


