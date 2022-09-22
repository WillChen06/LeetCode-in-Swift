import Foundation

public class PlusOneSolution {
    public static func plusOne(_ digits: [Int]) -> [Int] {
        var reversed = Array(digits.reversed())
        var i = 0
        var carry = 1
        
        while carry == 1 {
            if i < reversed.count {
                if reversed[i] == 9 {
                    reversed[i] = 0
                } else {
                    reversed[i] += 1
                    carry = 0
                }
            } else {
                reversed.append(1)
                carry = 0
            }
            i += 1
        }
        return Array(reversed.reversed())
    }
}
