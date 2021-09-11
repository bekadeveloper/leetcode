class Solution {
    func generateTheString(_ n: Int) -> String {
        n % 2 != 0 ? String(repeating: "a", count: n) : String(repeating: "a", count: n-1) + "b"
    }
}