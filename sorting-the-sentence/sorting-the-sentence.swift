class Solution {
    func sortSentence(_ s: String) -> String {
        s.components(separatedBy: " ").sorted { $0.last!.wholeNumberValue! < $1.last!.wholeNumberValue! }.map { $0.dropLast() }.joined(separator: " ")
    }
}