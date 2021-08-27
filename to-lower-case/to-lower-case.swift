class Solution {
    func toLowerCase(_ s: String) -> String {
        var result = ""
        
        for i in s {
            if i.asciiValue! >= 65 && i.asciiValue! <= 90 {
                result.append(Character(UnicodeScalar(i.asciiValue! + 32)))
            } else {
                result.append(i)
            }
        }
        return result
    }
}