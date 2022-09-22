import Foundation

public class ClimbStairsSolution {
    public static func climbStairs(_ n: Int) -> Int {
        if n == 1 { return 1 }
        var result: [Int] = Array(repeating: 0, count: n + 1)
        result[0] = 1
        result[1] = 1
        for i in 2...n {
            result[i] = result[i - 1] + result[i - 2]
        }
        return result[n]
    }
}
