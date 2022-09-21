import Foundation

public class LongestCommonPrefixSolution {
    public static func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count < 1 { return "" }
        var output = strs[0]
        
        for i in 1..<strs.count {
            output = getPrefix(output: output, compare: strs[i])
        }
        return output
    }

    private static func getPrefix(output: String, compare: String) -> String {
        let outputArr = Array(output)
        let compareArr = Array(compare)

        var result = String()
        var i = 0
        while((i < output.count && i < compare.count) && outputArr[i] == compareArr[i]) {
            result += String(outputArr[i])
            i += 1
        }
        return result
    }

}
