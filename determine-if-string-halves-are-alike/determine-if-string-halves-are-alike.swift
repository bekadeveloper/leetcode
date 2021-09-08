class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        let s = Array(s.lowercased()), c = s.count / 2, vowels = [Character](["a", "e", "i", "o", "u"])
        var a = 0, b = 0
        
        for i in 0..<c {
            a += vowels.contains(s[i]) ? 1 : 0
            b += vowels.contains(s[i + c]) ? 1 : 0
        }
        return a == b
    }
}