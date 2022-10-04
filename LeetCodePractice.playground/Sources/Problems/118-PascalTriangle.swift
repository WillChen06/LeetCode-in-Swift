import Foundation

public class PascalTrinagleSolution {
    public static func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 1 { return [[1]] }
        var res = [[1]]
        for row in 2...numRows {
            res.append(helper(previous: res[row - 2], row: row))
        }
        return res
    }
    
    private static func helper(previous: [Int], row: Int) -> [Int] {
        var expand = previous
        expand.insert(0, at: 0)
        expand.insert(0, at: expand.count)
        
        var first = 0
        var second = 1
        var res = [Int]()
        while second < expand.count {
            res.append(expand[first] + expand[second])
            first += 1
            second += 1
        }
        return res
    }
}
