import Foundation

public class SearchInRotatedSortedArraySolution {
    // Need time: O(n)
    public static func search(_ nums: [Int], _ target: Int) -> Int {
        var result = -1
        for (i, num) in nums.enumerated() {
            if target == num {
                result = i
            }
        }
        return result
    }
}

