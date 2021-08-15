class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        nums.sorted().suffix(2).map { $0-1 }.reduce(1, *)
    }
}

class Solution2 {
    func maxProduct(_ nums: [Int]) -> Int {
        let nums = nums.sorted { $0 > $1 }
        return (nums[0]-1) * (nums[1]-1)
    }
}