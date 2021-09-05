class Solution {
    func removeOuterParentheses(_ S: String) -> String {
        var str = "", i = 0
        
        for s in S {
            if s == "(" {
                if i > 0 { str.append(s) }
                i += 1
            } else if s == ")" {
                i -= 1
                if i > 0 { str.append(s) }
            }
        }
        return str
    }
}