import Foundation

// FIX: Int overflow, ex input: "20000000000000000000"
public class MyAtoiSolution {
    public static func myAtoi(_ s: String) -> Int {
        var i = 0
        var result = 0
        var negative = 1
        
        let charArr = Array(s)
        let minimum = NSDecimalNumber(decimal: pow(-2, 31)) .intValue
        let maximum = NSDecimalNumber(decimal: pow(2, 31) - 1).intValue
        
        while i < s.count && charArr[i] == " " {
            i += 1
        }
        
        if i < s.count && charArr[i] == "-" {
            i += 1
            negative = -1
        } else if i < s.count && charArr[i] == "+" {
            i += 1
        }
        
        while i < s.count && charArr[i].isNumber {
            result = result * 10 + (charArr[i].wholeNumberValue ?? 0)
            i += 1
        }
        
        result = result * negative
        if result < 0 {
            return max(result, minimum)
        }
        return min(result, maximum)
    }
}
