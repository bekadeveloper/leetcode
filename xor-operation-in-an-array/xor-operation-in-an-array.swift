class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var result = start
        
        for i in 1..<n {
            result ^= start + 2 * i
        }
        return result
    }
}