class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var res = [nums[0]]
        for i in 1...nums.count-1 {
            res.append(res[i-1] + nums[i])
        }
        return res
    }
}