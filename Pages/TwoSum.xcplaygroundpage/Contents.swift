import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var nums = nums
        var indicesToReturn = [Int]()

        for (index, num) in nums.enumerated() {
            let diff = target - num
            let enumerated = nums.enumerated().filter { $0.offset != index && $0.element == diff }
            for index in enumerated {
                indicesToReturn.append(index.offset)
            }
        }
        return indicesToReturn.sorted()
    }
}
