import Foundation

public class RotateImageSolution {
    public static func rotate(_ matrix: inout [[Int]]) {
        var dict: [Int : [Int]] = [:]
        for row in matrix {
            for (j, num) in row.enumerated() {
                if dict[j] == nil {
                    dict[j] = [num]
                } else {
                    dict[j]?.insert(num, at: 0)
                }
            }
        }
        
        let sortedDict = dict.sorted { one, two in
            return one.key < two.key
        }
        matrix = sortedDict.map({ $0.value })
    }
}
