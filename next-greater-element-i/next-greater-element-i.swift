class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var ans: [Int] = []
        
        for num in nums1 {
            if let j = nums2.index(of: num) {
                var nextGreater = -1
                
                for k in nums2[j...] {
                    if k > num {
                        nextGreater = k
                        break
                    }
                }
                ans.append(nextGreater)
            }
        }
        return ans
    }
}