import Foundation

class Solution {
    let romanNumeralsToNumber: [String: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    
    func romanToInt(_ s: String) -> Int {
        var total = 0
        let chars = Array(s)
        
        for (index, char) in chars.enumerated() {
            let currentValue = romanNumeralsToNumber[String(char)] ?? 0
            if index + 1 < chars.count,
               let nextValue = romanNumeralsToNumber[String(chars[index + 1])],
               currentValue < nextValue {
                total -= currentValue
            } else {
                total += currentValue
            }
        }
        
        return total
    }
}
