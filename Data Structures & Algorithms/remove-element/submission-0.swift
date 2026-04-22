class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var l = 0
        for r in 0..<nums.count {
            if nums[r] != val {
                nums[l] = nums[r]
                l += 1
            }
        }

        return l
    }
}
