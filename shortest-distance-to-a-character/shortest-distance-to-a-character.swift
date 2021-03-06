func absolute(of n: Int) -> Int {
    n < 0 ? -n : n
}

extension Array where Element == Int {
    func nearestIntegerDifference(of n: Int) -> Int {
        var diff = absolute(of: self[0] - n)
        
        for i in self {
            let temp = absolute(of: i - n)
            
            if temp < diff {
                diff = temp
            }
        }
        return diff
    }
}

class Solution {
    func shortestToChar(_ s: String, _ c: Character) -> [Int] {
        var arr = Array(s), answer = Array(repeating: Int(), count: s.count), occurences = arr.indices.filter { arr[$0] == c }
        
        for i in arr.indices {
            answer[i] = occurences.nearestIntegerDifference(of: i)
        }
        return answer
    }
}