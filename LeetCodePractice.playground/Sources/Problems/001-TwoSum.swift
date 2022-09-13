import Foundation

public class TwoSumSolution {
    public static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int : Int] = [:]
        for index in 0..<nums.count {
            if let target = dict[nums[index]] {
                return [target, index]
            } else {
                dict[target - nums[index]] = index
            }
        }
        fatalError()
    }
}
