extension String {
    func helper() -> Bool {
        let firstRow = Set("qwertyuiop"), secondRow = Set("asdfghjkl"), thirdRow = Set("zxcvbnm")
        let temp = Set(self.lowercased())
        
        return temp.isSubset(of: firstRow) || temp.isSubset(of: secondRow) || temp.isSubset(of: thirdRow)
    }
}

class Solution {
    func findWords(_ words: [String]) -> [String] {
        words.filter { $0.helper() }
    }
}