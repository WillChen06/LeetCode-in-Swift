import Foundation

public class threeSumSolution {
    // Time : O(n³)
    public static func threeSum(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var temp = [Int]()
        
        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                var k = j + 1
                while k < nums.count {
                    temp.append(contentsOf: [nums[i], nums[j], nums[k]])
                    if temp.reduce(0, +) == 0 && !res.contains(where: { $0.sorted() == temp.sorted() }) {
                        res.append(temp)
                    }
                    temp.removeAll()
                    k += 1
                }
            }
        }
        return res
    }
    
    public static func threeSum2(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        let sortedNums = nums.sorted(by: <)
        
        for (i, num) in sortedNums.enumerated() {
            if i > 0 && num == sortedNums[i - 1] { continue } // Not use same value
            
            var left = i + 1
            var right = sortedNums.count - 1
            
            while left < right {
                let threeSum = num + sortedNums[left] + sortedNums[right]
                if threeSum > 0 {
                    right -= 1
                } else if threeSum < 0 {
                    left += 1
                } else {
                    result.append([num, sortedNums[left], sortedNums[right]])
                    
                    left += 1
                    
                    // Not use same value
                    while sortedNums[left] == sortedNums[left - 1] && left < right {
                        left += 1
                    }
                }
            }
        }
        
        return result
    }
}
