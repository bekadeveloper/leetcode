extension String {
    subscript (position: Int) -> Character {
        self[index(startIndex, offsetBy: position)]
    }
}

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var result = ""
        
        for i in indices.indices {
            result.append(s[indices.firstIndex(of: i)!])
        }
        return result
    }
}