class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sumAll = nums.count * (nums.count + 1) / 2
        return sumAll - nums.reduce(0, +)
    }
}