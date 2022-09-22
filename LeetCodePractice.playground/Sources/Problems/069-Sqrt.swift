import Foundation

public class SqrtSolution {
    public static func mySqrt(_ x: Int) -> Int {
        var result = 0
        while (result * result) < x {
            result += 1
            if result * result > x {
                return result - 1
            }
        }
        return result
    }
}
