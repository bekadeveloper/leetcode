class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var sum = 0
        for (i, num) in arr.enumerated() {
            let contribution = Int(ceil(Double((i + 1) * (arr.count - i)) / 2.0))
            sum += contribution * num
        }
        return sum
    }
}