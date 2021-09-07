class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var arr: [Int] = []
        
        nums.forEach { i in
            if i % 2 == 0 {
                arr.insert(i, at: 0)
            } else {
                arr.append(i)
            }
        }
        return arr
    }
}