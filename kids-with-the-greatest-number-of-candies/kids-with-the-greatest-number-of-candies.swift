class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        candies.map { $0+extraCandies >= candies.max()! }
    }
}