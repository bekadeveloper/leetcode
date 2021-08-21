// Runtime: 12 ms
class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var res = 0
        for i in startTime.indices {
            res += startTime[i]...endTime[i] ~= queryTime ? 1 : 0
        }
        return res
    }
}

// Runtime: 8 ms
class Solution2 {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        zip(startTime,endTime).filter { $0...$1 ~= queryTime }.count
    }
}