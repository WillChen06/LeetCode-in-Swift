import Foundation

public class FindFirstAndLastPositionOfElementInSortedArraySolution {
    public static func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        
        for (i, num) in nums.enumerated() {
            if num == target {
                result.append(i)
            }
        }
        
        if result.isEmpty {
            return [-1, -1]
        } else if result.count == 1 {
            return [result[0], result[0]]
        } else {
            return [result[0], result[result.count - 1]]
        }
    }
}
