import Foundation

public class MaxAreaSolution {
    
    /// Brute Force
    /// Time O(n²)
    /// Time Exceeded
    public static func maxArea(_ height: [Int]) -> Int {
        var contain = 0
        for start in 0..<height.count {
            var next = start + 1
            while next < height.count {
                let x = next - start
                let y = min(height[start], height[next])
                let temp = x * y
                if contain < temp {
                    contain = temp
                }
                next += 1
            }
        }
        return contain
    }
    
    /// Time O(n)
    public static func maxArea2(_ height: [Int]) -> Int {
        var contain = 0
        var left = 0
        var right = height.count - 1
        
        while left < right {
            let temp = (right - left) * min(height[left], height[right])
            contain = max(contain, temp)
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return contain
    }
}
