class Solution {
    func calPoints(_ ops: [String]) -> Int {
        var result: [Int] = []
        ops.forEach {
            switch $0 {
                case "+": result.append(result.suffix(2).reduce(0, +))
                case "D": result.append(result.last! * 2)
                case "C": result.removeLast()
                default: result.append(Int($0)!)
            }
        }
        return result.reduce(0, +)
    }
}