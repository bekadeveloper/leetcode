class Solution {
    func reverseString(_ s: inout [Character]) {
        helper(0, s.count-1)
        
        func helper(_ l: Int, _ r: Int) {
            if l < r {
                (s[l], s[r]) = (s[r], s[l])
                helper(l+1, r-1)
            }
        }
    }
}