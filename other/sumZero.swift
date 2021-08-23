// Runtime: 4 ms, beats 100%
// Time Complexity: O(n/2)
// Space: O(n)
class Solution {
    func sumZero(_ n: Int) -> [Int] {
        guard n > 1 else { return [0] }

        var res: [Int] = []
        if n % 2 != 0 { res.append(0) } 

        (1...n/2).forEach {
            res.append(-$0)
            res.append($0)
        }
        return res
    }
}