//: [Previous](@previous)

/*
 Given the head of a singly linked list, return true if it is a
 palindrome or false otherwise.
 Input: head = [1,2,2,1]
 Output: true
 Input: head = [1,2]
 Output: false
 */

import Foundation

class ListNode {
    var data: Int
    var next: ListNode?
    
    init(_ data: Int, _ next: ListNode? = nil) {
        self.data = data
        self.next = next
    }
}

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var result = Bool()
        return result
    }
}

//let list = ListNode(1, ListNode(2, ListNode(3, ListNode(2, ListNode(1)))))
print(isPalindrome([1, 2]))

