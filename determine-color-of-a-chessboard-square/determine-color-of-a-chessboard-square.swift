class Solution {
    func squareIsWhite(_ coordinates: String) -> Bool {
        let letter = coordinates.first!, num = coordinates.last!.wholeNumberValue!
        
        if letter.asciiValue! % 2 == 0 {
            return num % 2 == 0 ? false : true 
        } else {
            return num % 2 == 0 ? true : false
        }
    }
}