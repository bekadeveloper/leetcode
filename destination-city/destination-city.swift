class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var hash: [String:String] = [:], current = paths[0][0]
        
        paths.forEach { hash[$0[0]] = $0[1] }
        
        while let city = hash[current] {
            current = city
        }
        return current
    }
}