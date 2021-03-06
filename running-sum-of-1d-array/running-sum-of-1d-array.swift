class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sum: [Int] = []
        
        for index in nums.indices {
            sum.append(nums[0...index].reduce(0, +))
        }
        
        return sum
    }
}