import Foundation

enum Roman: String {
    case one = "I"
    case five = "V"
    case ten = "X"
    case fifty = "L"
    case hundred = "C"
    case fiveHundred = "D"
    case thousand = "M"
    
    var value: Int {
        switch self {
        case .one: return 1
        case .five: return 5
        case .ten: return 10
        case .fifty: return 50
        case .hundred: return 100
        case .fiveHundred: return 500
        case .thousand: return 1000
        }
    }
}

public class RomanToIntegerSolution {
    public static func romanToInt(_ s: String) -> Int {
        let arr = Array(s).compactMap({ $0 })
        print("Roman Arr : \(arr)")
        return 0
    }
}
