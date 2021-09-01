class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        nums.map { num in nums.filter { $0 < num }.count }
    }
}