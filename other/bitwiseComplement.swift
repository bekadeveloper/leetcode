class Solution {
    func bitwiseComplement(_ n: Int) -> Int {
        Int(String(n, radix: 2).map { $0 == "1" ? "0" : "1" }.joined(), radix: 2)!
    }
}