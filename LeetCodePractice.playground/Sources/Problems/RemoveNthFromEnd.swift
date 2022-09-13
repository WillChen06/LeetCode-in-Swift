import Foundation
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

/*
 Example 1:
 Input: head = [1,2,3,4,5], n = 2
 Output: [1,2,3,5]
 
 Example 2:
 Input: head = [1], n = 1
 Output: []
 
 Example 3:
 Input: head = [1,2], n = 1
 Output: [1]
 
 The number of nodes in the list is sz.
 1 <= sz <= 30
 0 <= Node.val <= 100
 1 <= n <= sz
 */

public class RemoveNthFromEndSolution {
    public static func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var nodes = head
        var headNode: ListNode? = head
        
        var head: ListNode? = nil
        var tail: ListNode? = nil
        
        
        var count = 0
        while nodes != nil {
            count += 1
            nodes = nodes?.next
        }
        
        var currentIndex = 0
        while headNode != nil {
            guard n <= count else { return nil }
            
            if currentIndex != count - n {
                let temp = ListNode(headNode?.val ?? 0)
                if head == nil {
                    head = temp
                } else {
                    tail?.next = temp
                }
                tail = temp
            }
            headNode = headNode?.next
            currentIndex += 1
        }
        return head
    }
}
