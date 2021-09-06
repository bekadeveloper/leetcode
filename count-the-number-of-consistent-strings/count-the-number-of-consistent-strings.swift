class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        let mySet = Set(allowed)
        return words.filter { Set($0).isSubset(of: mySet) }.count
    }
}