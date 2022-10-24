import Foundation

public class ValidPalindormeSolution {
    public static func isPalindrome(_ s: String) -> Bool {
        let str = s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()
        if str.isEmpty { return true }
        var left = 0
        var right = str.count - 1
        let strArr = Array(str)
        while left <= right {
            if strArr[left] == strArr[right] {
                left += 1
                right -= 1
            } else {
                return false
            }
        }
        return true
    }
}
