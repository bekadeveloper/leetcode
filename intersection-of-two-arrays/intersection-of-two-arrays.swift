class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var arr: [Int] = []
        let smallest = nums1.count < nums2.count ? nums1 : nums2
        
        for i in Set(smallest) {
            if smallest == nums1 && nums2.contains(i) || smallest == nums2 && nums1.contains(i) {
                arr.append(i)
            }
        }
        return arr
    }
}