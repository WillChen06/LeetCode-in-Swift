import Foundation

public class PalindromeNumberSolution {
    public static func isPalindrome(_ x: Int) -> Bool {
        let str = String(x)
        return str == String(str.reversed())
    }
}
