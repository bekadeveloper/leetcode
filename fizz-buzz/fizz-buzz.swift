class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        (1...n).map { $0%3 == 0 && $0%5 == 0 ? "FizzBuzz" : ($0%3 == 0 ? "Fizz" : ($0%5 == 0 ? "Buzz" : "\($0)")) }
    }
}