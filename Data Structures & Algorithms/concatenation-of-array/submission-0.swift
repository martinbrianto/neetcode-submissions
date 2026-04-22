class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var ans = [Int]()
        ans.append(contentsOf: nums)
        ans.append(contentsOf: nums)
        return ans
    }
}
