class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var strings = strs
        var common = ""
        let sorted = strings.sorted(by: { $0 < $1 })
        if let firstWord = sorted.first,
           let lastWord = sorted.last {
            common = (firstWord.commonPrefix(with: lastWord))
        }
        return common
    }
}
