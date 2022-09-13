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
public class AddTwoNumbersSolution {
    public static func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var node1: ListNode? = l1
        var node2: ListNode? = l2

        var head: ListNode? = nil
        var tail: ListNode? = nil
        
        var carry = 0
        
        while node1 != nil || node2 != nil {
            let firsValue: Int = node1?.val ?? 0
            let secondValue: Int = node2?.val ?? 0
            let sum = firsValue + secondValue + carry
            carry = sum / 10
            
            let val = sum % 10
            let temp = ListNode(val)
            
            if head == nil {
                head = temp
            } else {
                tail?.next = temp
            }
            tail = temp
            
            node1 = node1?.next
            node2 = node2?.next
        }
        if carry != 0 {
            tail?.next = ListNode(carry)
        }
        return head
    }
}


//let res = AddTwoNumbersSolution.addTwoNumbers(ListNode(2, ListNode(4, ListNode(3))), ListNode(5, ListNode(6, ListNode(4))))
//dump(res)

/**
 * Dummy head
 *
 * Node 1
 * ② -> ④ -> ③
 * Node 2
 * ⑤ -> ⑥ -> ④
 * Result
 * ⑦ -> ⓪ -> ⑧
 *
 *
 * Head Tail(sum 7)
 * ↓    ↓
 *   7️⃣
 *
 * Head     Tail(sum 10, carry: 1)
 * ↓        ↓
 * 7️⃣       0️⃣
 * Head             Tail(sum 8)
 * ↓                ↓
 * 7️⃣       0️⃣      8️⃣
 **/
