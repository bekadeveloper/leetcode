class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        var i = 0
        
        while i < nums.count {
            if i == nums.count - 1 {
                return sorted.last!
            } 
            if sorted[i] == sorted[i+1] {
                i += 2
            } else {
                return sorted[i]
            }
        }
        return Int()
    }
}