// Brute-force
// O(n^2) time
// O(1) space
extension Array where Element == Int {
    func count(_ n: Int) -> Int {
        var res = 0

        for i in self {
            if i == n { res += 1 }
        }
        return res
    }
}
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        for i in nums {
            if nums.count(i) > nums.count / 2 { return i }
        }
        return Int()
    }
}

// Using hash table
// O(n) time
// O(n) space
class Solution2 {
    func majorityElement(_ nums: [Int]) -> Int {
        guard nums.count != 1 else { return nums[0] }
        var hash: [Int: Int] = [:]

        for i in nums {
            if hash[i] == nil {
                hash[i] = 1
            } else { 
                hash[i]! += 1
                if hash[i]! > nums.count / 2 {
                    return i
                }
            }
        }
        return Int()
    }
}

// Sorting
// O(nlogn) time
// O(n) space
class Solution3 {
    func majorityElement(_ nums: [Int]) -> Int {
        nums.sorted()[nums.count/2]
    }
}

// Randomization
// Runtime: 112 ms, beats 96.77%
// O(infinity) time in worst case, linear time in average case
// O(1) space
class Solution4 {
    func majorityElement(_ nums: [Int]) -> Int {
        let majorityCount = nums.count/2

        while true {
            let candidate = nums.randomElement()!
            if nums.count(candidate) > majorityCount {
                return candidate
            }
        }
    }
}

// Boyer-Moore Voting Algorithm
// O(n) time
// O(1) space
class Solution5 {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0, candidate: Int?

        for i in nums {
            if count == 0 { candidate = i }
            count += i == candidate ? 1 : -1
        }
        return candidate!
    }
}