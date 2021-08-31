class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        zip(nums, nums.dropFirst(n)).flatMap { [$0, $1] }
    }
}