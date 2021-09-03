class Solution {
    func countBits(_ n: Int) -> [Int] {
        Array(0...n).map { String($0, radix: 2).filter {$0 == "1"}.count }
    }
}