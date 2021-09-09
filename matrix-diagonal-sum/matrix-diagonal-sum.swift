class Solution {
    func diagonalSum(_ matrix: [[Int]]) -> Int {
        var sum = 0, i = 0, k = matrix.count - 1
        
        for row in matrix {
            sum += i == k ? row[i] : row[i] + row[k]
            i += 1
            k -= 1
        }
        return sum
    }
}
