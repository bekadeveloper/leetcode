class Queue<T> {
    private var leftStack: [T]
    private var rightStack: [T]
	
    init () {
        leftStack = []
        rightStack = []
    }
	
    func enqueue(_ element: T) { 
		rightStack.append(element) 
	}
	
    @discardableResult
    func dequeue() -> T? {
        if leftStack.isEmpty {
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        return leftStack.popLast()
    }
	
    func peek() -> T? {
        !leftStack.isEmpty ? leftStack.last : rightStack.first
    }
	
    var count: Int { leftStack.count + rightStack.count }
}

class RecentCounter {
    var queue: Queue<Int>
    init() { queue = Queue<Int>() }
	
    func ping(_ t: Int) -> Int {
        queue.enqueue(t)
		
        while queue.peek()! < t-3000 {
            queue.dequeue()
        }
        return queue.count
    }
}