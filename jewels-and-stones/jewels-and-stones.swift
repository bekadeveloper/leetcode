class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        stones.filter { jewels.contains($0) }.count
    }
}