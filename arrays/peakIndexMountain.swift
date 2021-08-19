class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        arr.index(of: arr.max()!)!
    }
}