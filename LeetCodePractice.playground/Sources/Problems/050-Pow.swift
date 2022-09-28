import Foundation

public class PowSolution {
    public static func myPow(_ x: Double, _ n: Int) -> Double {
        var x = x
        var n = n
        
        if n < 0 {
            x = 1 / x
            n = -n
        }
        
        var res = 1.0
        while n > 0 {
            if n % 2 != 0 {
                res *= x
            }
            
            x *= x
            n /= 2
        }
        return res
    }
}
