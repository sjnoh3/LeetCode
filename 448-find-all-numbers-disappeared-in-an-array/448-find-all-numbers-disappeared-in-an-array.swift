class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var missingNumbers: [Int] = []
        for index in 1...nums.count {
            if nums.contains(_: index) {
                continue
            }
            missingNumbers.append(index)
        }
        return missingNumbers
    }
}