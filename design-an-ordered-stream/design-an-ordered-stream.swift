class OrderedStream {
    private var storage: [String]
    private var i = 0
    
    init(_ n: Int) {
        storage = Array(repeating: String(), count: n)
    }
    
    func insert(_ id: Int, _ value: String) -> [String] {
        var result: [String] = []
        storage[id-1] = value
        
        for str in storage[i...] {
            if str == "" { break }
            result.append(str)
            i += 1
        }
        return result
    }
}