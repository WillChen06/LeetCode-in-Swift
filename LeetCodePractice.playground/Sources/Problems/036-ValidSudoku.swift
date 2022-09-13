import Foundation

public class ValidSudokuSolution {
    public static func isValidSudoku(_ board: [[Character]]) -> Bool {
        var numChar: Set<String> = Set<String>()
        for (row, value) in board.enumerated() {
            for (column, char) in value.enumerated() {
                if char == "." { continue }
                if !(numChar.insert("\(char) in row \(row)").inserted) ||
                   !(numChar.insert("\(char) in column \(column)").inserted) ||
                   !(numChar.insert("\(char) in row \(row / 3) column \(column / 3)").inserted) {
                    return false
                }
            }
        }
        return true
    }
}

