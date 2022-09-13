import Foundation

public class ReverseIntegerSolution {
    public static func reverse(_ x: Int) -> Int {
        var number = x
        var reverseNumber: Int = 0
        
        while number != 0 {
            let pop = number % 10
            number = number / 10
            
            if reverseNumber > Int32.max / 10 || reverseNumber < Int32.min / 10  {
                return 0
            }
            
            let temp = reverseNumber * 10 + pop
            reverseNumber = temp
        }
        
        return reverseNumber
    }
}
