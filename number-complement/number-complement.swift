class Solution {
    func findComplement(_ num: Int) -> Int {
        Int(String(num, radix: 2).map{$0 == "1" ? "0" : "1"}.joined(), radix: 2)!
    }
}