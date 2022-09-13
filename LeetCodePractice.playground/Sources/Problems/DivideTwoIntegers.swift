import Foundation

public class DivideTwoIntegersSolution {
    // Time Limit Exceeded
    public static func divide(_ dividend: Int, _ divisor: Int) -> Int {
        var result = 0
        var negative = 1
        if (dividend < 0 && divisor > 0) || (dividend > 0 && divisor < 0) {
            negative *= -1
        }
        
        var input = abs(dividend)
        var div = abs(divisor)
        
        while input >= div {
            input = input - div
            result += 1
        }
        
        if negative == 1 && result >= Int32.max {
            return Int(Int32.max)
        }
        
        if negative == -1 && result <= Int32.min {
            return Int(Int32.min)
        }
        
        return result * negative
    }

    /**
     Any Integer can be represented with sum of power of 2
     每個整數都可以用2的n次方的和來表示（2進位）
     
     << left shift
     num << n = num * 2ⁿ
     num >> n = num / 2ⁿ
     
     1 << shitf = 1 * 2shift
     7 ≈ 3 * 2¹
     31 ≈ 4 * 2² + 4 * 2¹ + 4 * 2⁰ = 4 * (2² + 2¹ + 2⁰)
     10 ≈ 3 * 2¹ + 3 * 2⁰ = 3 * (2¹ + 2⁰)
     */
    public static func divide2(_ dividend: Int, _ divisor: Int) -> Int {
        var result: UInt = 0
        var negative = 1
        if (dividend < 0 && divisor > 0) || (dividend > 0 && divisor < 0) {
            negative *= -1
        }
        
        var input = UInt(abs(dividend))
        var div = UInt(abs(divisor))
        
        while input >= div {
            var temp = UInt(div)
            var pow: UInt = 1
            while input > temp << 1 {
                temp <<= 1
                
                pow <<= 1
            }
            input -= temp
            result += pow
        }
        
        if negative == 1 && result >= Int32.max {
            return Int(Int32.max)
        }
        
        if negative == -1 && result <= Int32.min {
            return Int(Int32.min)
        }
        
        return Int(result) * negative
    }
}
