class Solution {
    func generateTheString(_ n: Int) -> String {
        if n % 2 == 0 {
            return String(repeating: "a", count: n-1) + "b"
        } else {
            return String(repeating: "a", count: n)
        }
    }
}