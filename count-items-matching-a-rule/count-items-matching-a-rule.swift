class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        let ruleIndex = ruleKey == "type" ? 0 : (ruleKey == "color" ? 1 : 2)
        
        return items.filter { $0[ruleIndex] == ruleValue }.count
    }
}