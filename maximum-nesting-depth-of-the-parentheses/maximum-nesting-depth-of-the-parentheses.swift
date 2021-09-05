class Solution {
    func maxDepth(_ s: String) -> Int {
        var depth = 0
        var maxDepth = 0
        
        for i in s {
            switch i {
                case "(":
                    depth += 1
                case ")":
                    if depth > maxDepth {
                        maxDepth = depth
                    }
                    depth -= 1
                default:
                    continue
            }
        }
        return maxDepth
    }
}