import Foundation

public class Solution {
    public static func permute(_ nums: [Int]) -> [[Int]] {
        if nums.count == 1 { return [nums] }
        
        var result = [[Int]]()
        for (index, num) in nums.enumerated() {
            var newNums = nums
            newNums.remove(at: index)
            result += permuteHelper(a: [num], b: newNums)
        }
        return result
    }
    
    private static func permuteHelper(a: [Int], b: [Int]) -> [[Int]] {
        if b.count == 1 { return [a + b] }
        var result = [[Int]]()
        for i in 0..<b.count {
            var tempA = a
            var tempB = b
            let element = b[i]
            tempA.append(element)
            tempB.remove(at: i)
            result += permuteHelper(a: tempA, b: tempB)
        }
        return result
    }
}
