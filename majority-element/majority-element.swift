class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0, candidate: Int?
        
        for i in nums {
            if count == 0 { candidate = i }
            count += i == candidate ? 1 : -1
        }
        return candidate!
    }
}