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
        let array = Array(s)
        var result = 0
        for (index, char) in array.enumerated() {
            let roman = Roman(rawValue: String(char))
            switch roman {
            case .one:
                if index < array.count - 1 {
                    let next = array[index + 1]
                    if next == "V" || next == "X" {
                        result -= 1
                    } else {
                        result += 1
                    }
                } else {
                    result += 1
                }
            case .ten:
                if index < array.count - 1 {
                    let next = array[index + 1]
                    if next == "L" || next == "C" {
                        result -= 10
                    } else {
                        result += 10
                    }
                } else {
                    result += 10
                }
            case .hundred:
                if index < array.count - 1 {
                    let next = array[index + 1]
                    if next == "D" || next == "M" {
                        result -= 100
                    } else {
                        result += 100
                    }
                } else {
                    result += 100
                }
            default:
                result += roman?.value ?? 0
            }
        }
        return result
    }
}
