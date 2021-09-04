class Solution {
    func reverseWords(_ s: String) -> String {
        s.components(separatedBy: " ").map { String($0.reversed()) }.joined(separator: " ")
    }
}