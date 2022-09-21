import Foundation

public class ValidParenthesesSolution {
    public static func isValid(_ s: String) -> Bool {
        let closeTable: [Character : Character] = ["]" : "[", ")" : "(", "}" : "{"]
        var result = [Character]()
        
        for char in s {
            if closeTable[char] == nil {
                result.append(char)
            } else {
                if result.popLast() != closeTable[char] {
                    return false
                }
            }
        }
        return result.isEmpty
    }
}
