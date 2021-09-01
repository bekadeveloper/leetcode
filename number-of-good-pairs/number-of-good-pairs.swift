class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var hash: [Int: Int] = [:], result = 0
        
        nums.forEach {
            hash[$0, default: 0] += 1
        }
        
        hash.values.forEach {
            result += $0 * ($0-1) / 2
        }
        return result
    }
}