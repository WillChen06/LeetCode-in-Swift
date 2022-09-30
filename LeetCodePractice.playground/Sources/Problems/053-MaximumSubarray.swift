import Foundation

public class MaximumSubarraySolution {
    public static func maxSubArray(_ nums: [Int]) -> Int {
        var res = nums[0]
        var current = 0
        
        for num in nums {
            if current < 0 {
                current = 0
            }
            current += num
            res = max(res, current)
        }
        return res
    }
}
