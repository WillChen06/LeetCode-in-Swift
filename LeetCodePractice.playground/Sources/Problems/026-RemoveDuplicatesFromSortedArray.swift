import Foundation

public class RemoveDuplicatesFromSortedArraySolution {
    public static func removeDuplicates(_ nums: inout [Int]) -> Int {
        var dict = [Int : Int]()
        var result = [Int]()
        for (i, num) in nums.enumerated() {
            if dict[num] == nil {
                dict[num] = i
                result.append(num)
            }
        }
        nums = result
        return nums.count
    }
}
