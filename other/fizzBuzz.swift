// Runtime: 24 ms
class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var res: [String] = []

        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0{
                res.append("FizzBuzz")
            } else if i % 3 == 0 {
                res.append("Fizz")
            } else if i % 5 == 0 {
                res.append("Buzz")
            } else {
                res.append("\(i)")
            }
        }
        return res
    }
}

// One-liner
// Runtime: 20 ms, beats 93%
class Solution2 {
    func fizzBuzz(_ n: Int) -> [String] {
        (1...n).map { $0%3==0 && $0%5==0 ? "FizzBuzz" : ($0%3==0 ? "Fizz" : ($0%5==0 ? "Buzz" : "\($0)")) }
    }
}