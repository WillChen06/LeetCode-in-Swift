import Foundation

public class SingleNumberSolution {
    public static func singleNumber(_ nums: [Int]) -> Int {
        if nums.count == 1 { return nums[0] }
        var res: Set<Int> = []
        
        for num in nums {
            if res.contains(num) {
                res.remove(num)
            } else {
                res.insert(num)
            }
        }
        return res.first ?? Int()
    }
}
