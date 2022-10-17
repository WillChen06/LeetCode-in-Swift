import Foundation

public class MaxProfitSolution {
    public static func maxProfit(_ prices: [Int]) -> Int {
        var buy = 0
        var sold = 1
        
        var res = 0
        
        while sold < prices.count {
            if prices[buy] < prices[sold] { // grow
                res = max(res, prices[sold] - prices[buy])
            } else {
                buy = sold
            }
            sold += 1
        }
        
        return res
    }
}
