import Foundation

public class CountAndSaySolution {
    public static func countAndSay(_ n: Int) -> String {
        if n == 1 { return "1" }
        var say = String()
        say = countAndSay(n - 1)
        var output = String()
        var dict = [String : Int]()
        var previous = String()
        for char in say {
            let key = String(char)
            if !previous.isEmpty && key != previous {
                output += "\(dict[previous]!)\(previous)"
                dict[previous] = nil
            }
            if dict[key] == nil {
                dict[key] = 1
                previous = key
            } else {
                dict[key]! += 1
            }
        }
        output += "\(dict[previous]!)\(previous)"
        return output
    }
}
