class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        Set(sentence).count == 26
    }
}