// Definition of tree:

//     public class TreeNode<T> {
//         public var value: T
//         public var children: [TreeNode] = []
//         public weak var parent: TreeNode?

//         public init(_ value: T) {
//             self.value = value
//         }

//         public func add(_ child: TreeNode) {
//             children.append(child)
//             child.parent = self
//         }
//     }

class Solution {
    func printInLevelOrder<T>(for tree: TreeNode<T>) {
        var queue = Queue<TreeNode<T>>()
        var nodesLeftOnCurrentLevel: Int
        
        queue.enqueue(tree)
        
        while !queue.isEmpty {
            nodesLeftOnCurrentLevel = queue.count
            
            while nodesLeftOnCurrentLevel > 0 {
                guard let node = queue.dequeue() else { return }
                
                print(node.value, terminator: " ")
                node.children.forEach {
                    queue.enqueue($0)
                }
                
                nodesLeftOnCurrentLevel -= 1
            }                                                                                                   
            print()
        }
    }
}