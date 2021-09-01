class Solution {
    func subtractProductAndSum(_ number: Int) -> Int {
        let intArray = String(number).compactMap { $0.wholeNumberValue }
        return intArray.reduce(1, *) - intArray.reduce(0, +)
    }
}