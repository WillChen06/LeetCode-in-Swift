import Foundation

public class MaximumDepthSolution {
    public static func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        return 1 + max(maxDepth(root?.left), maxDepth(root?.right))
    }
}
