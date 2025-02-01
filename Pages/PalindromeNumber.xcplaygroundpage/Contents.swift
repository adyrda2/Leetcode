import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var arrayOfIntsAsStrings = String(x).map { String($0) }
        arrayOfIntsAsStrings.reverse()

        let backToInt = Int(arrayOfIntsAsStrings.joined(separator: ""))
        if let int = backToInt {
            return int == x
        }
        else {
            return false
        }
    }
}
