import Foundation

public class Symmetric {
    
    public static func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil { return true }
        return symmetricHelper(left: root?.left, right: root?.right)
    }
    
    private static func symmetricHelper(left: TreeNode?, right: TreeNode?) -> Bool {
        if left == nil && right == nil { return true }
        if left?.val != right?.val { return false }
        return symmetricHelper(left: left?.left, right: right?.right) && symmetricHelper(left: left?.right, right: right?.left)
    }
    
    
    
    
}
