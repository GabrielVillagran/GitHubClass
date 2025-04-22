import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init(){}
    
    public var isEmpty: Bool {
        head == nil
    }
    




     
    //add a value at the beginning of the list
    public mutating func push(value: Value) {
        head = Node(value: value, next: head?.next)
        if tail == nil {
            tail = head
        }
    }
 

	hotfix change


   
    //add a value at the end of the list
    public mutating func append(value: Value) {
        guard !isEmpty else {
            push(value: value)
            return
        }
        
        tail!.next = Node(value: value)
        tail = tail!.next

    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        
        return String(describing: head)
    }
}
