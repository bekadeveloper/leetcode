extension Int {
    func isSelfDividing() -> Bool {
        for d in String(self) {
            if d == "0" || self % d.wholeNumberValue! != 0 {
                return false
            }
        }
        return true
    }
}

class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var result: [Int] = [] 
        
        for number in left...right {
            if number.isSelfDividing() {
                result.append(number)
            }
        }
        return result
    }
}