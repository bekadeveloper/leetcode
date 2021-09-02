class Solution {
    func interpret(_ command: String) -> String {
        let array = Array(command)
        var result = ""
        
        for index in array.indices {
            if array[index] == "(" {
                if array[index+1] == ")" {
                    result.append("o")
                }
            } else if array[index] != ")" {
                result.append(array[index])
            }
        }
        
        return result
    }
}