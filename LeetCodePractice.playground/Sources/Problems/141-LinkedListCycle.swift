import Foundation

public class LinkedListCycleSolution {
    public static func hasCycle(_ head: ListNode?) -> Bool {
        guard head != nil else { return false }
        var first = head
        var second = head
        
        repeat {
            first = first?.next
            second = second?.next?.next
            
            if first === second {
                return true
            }
        } while second != nil
        return false
    }
}
