import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var nums = nums
        var indicesToReturn: [Int] = []
        var numberToIndex = [Int: Int]()

        for (index, num) in nums.enumerated() {
            let diff = target - num
            if let foundIndex = numberToIndex[diff] {
                indicesToReturn.append(foundIndex)
                indicesToReturn.append(index)
            }
            numberToIndex[num] = index
        }
        return indicesToReturn
    }
}
