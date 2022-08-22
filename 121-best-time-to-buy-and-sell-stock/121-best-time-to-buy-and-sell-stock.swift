class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty {
            return 0
        }
        
        var buyIndex = prices[0]
        var profit = 0
        
        for price in prices {
            if price < buyIndex {
                buyIndex = price
            }
            else if (price - buyIndex) > profit {
                profit = price - buyIndex
            }
        }
        
        return profit
    }
}

//         var profit = 0
//         var pricesAndDates: [Int: Int] = [:]
//         for (index, price) in prices.enumerated() {
//             pricesAndDates[price] = index
//             print("\(price): \(index)")
//         }
//         var sortedPrices = prices
//         sortedPrices.sort()
        
//         for (i, price) in sortedPrices.enumerated() {
//             if pricesAndDates[price] == prices.count {
//                 continue
//             }
//             var j = sortedPrices.count
//             while i != j {
//                 if pricesAndDates[price]! > pricesAndDates[sortedPrices[j]]! {
//                     continue
//                 } 
//                 let newProfit = sortedPrices[j] - sortedPrices[i]
//                 profit = (profit < newProfit) ? newProfit : profit 
//                 j -= 1
//             }
//         }
        
//         return profit