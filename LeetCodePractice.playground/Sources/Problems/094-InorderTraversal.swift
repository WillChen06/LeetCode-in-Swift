import Foundation

public class InorderTraversal {
    public static func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        var node = root
        var stack = [TreeNode]()
        
        while node != nil || stack.count != 0 {
            if let currentNode = node {
                stack.append(currentNode)
                node = currentNode.left
            } else {
                let previousNode = stack.removeLast()
                result.append(previousNode.val)
                node = previousNode.right
            }
        }
        return result
    }
}
