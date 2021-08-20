extension String {
    func helper() -> Bool {
        let firstRow = Set("qwertyuiop"), secondRow = Set("asdfghjkl"), thirdRow = Set("zxcvbnm")
        let temp = Set(self.lowercased())

        if temp.isSubset(of: firstRow) || temp.isSubset(of: secondRow) || temp.isSubset(of: thirdRow) {
            return true
        } else { 
            return false 
        }
    }
}

class Solution {
    func findWords(_ words: [String]) -> [String] {
        words.filter { $0.helper() }
    }
}