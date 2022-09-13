import Foundation

public class LongestPalindromeSolution {
    // Brute Force O(n³)
    public static func longestPalindrome(_ s: String) -> String {
        
        guard s.count > 1 else { return s }
        var start = 0
        var end = start
        
        let charArray = Array(s)
        var maxLength = 0
        
        for i in 0..<s.count {
            var left = i
            var right = s.count - 1
            var tempStart = left
            var tempEnd = right
            while left < right {
                if charArray[left] == charArray[right] {
                    if (right - left) > maxLength {
                        maxLength = right - left
                        tempStart = left
                        tempEnd = right
                    }
                    left += 1
                    right -= 1
                } else {
                    left = i
                    right = tempEnd - 1
                    tempStart = left
                    tempEnd = right
                    maxLength = 0
                }
            }
            
            if (tempEnd - tempStart) > (end - start) {
                start = tempStart
                end = tempEnd
            }
            
        }
        return String(charArray[start...end]).count > 1 ?  String(charArray[start...end]) : String(s.first!)
    }
    
    // MARK: - 從中間往兩側比較
    public static func longestPalindrome2(_ s: String) -> String {
        var start = 0
        var length = 0
        
        for i in 0..<s.count {
            let tempLength = max(getMaxLength(s, i, i), getMaxLength(s, i, i + 1))
            if tempLength > length {
                length = tempLength
                start = i - (tempLength - 1) / 2
            }
        }
        let startIndex = s.index(s.startIndex, offsetBy: start)
        let endIndex = s.index(s.startIndex, offsetBy: start + length)
        return String(s[startIndex..<endIndex])
        
    }
    
    private static func getMaxLength(_ input: String, _ left: Int, _ right: Int) -> Int {
        let charArray = Array(input)
        var tempLeft = left
        var tempRight = right
        while tempLeft >= 0 && tempRight < input.count && charArray[tempLeft] == charArray[tempRight] {
            tempLeft -= 1
            tempRight += 1
        }
        return tempRight - tempLeft - 1
    }
}
