import Foundation

public class MergeTwoListsSolution {
    public static func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil { return nil }
        var l1 = list1
        var l2 = list2
        let dummy: ListNode? = ListNode()
        var tail = dummy
        
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                tail?.next = l1
                l1 = l1?.next
            } else {
                tail?.next = l2
                l2 = l2?.next
            }
            tail = tail?.next
        }
        
        if l1 != nil {
            tail?.next = l1
        } else if l2 != nil {
            tail?.next = l2
        }
        
        return dummy?.next
    }
}
