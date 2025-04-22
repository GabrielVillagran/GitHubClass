import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init(){}
    
    public var isEmpty: Bool {
        head == nil
    }
    
        head = Node(value: value, next: head?.next)
        if tail == nil {
            tail = head
        }
    }
   ineininided 
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

func isEven(_ number: Int) -> Bool {
    return number % 2 == 0
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        
        return String(describing: head)
    }
}


func reverseString(_ str: String) -> String {
    return String(str.reversed())
}


func isPalindrome(_ text: String) -> Bool {
    let cleaned = text.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

func isNotPalindrome(_ text: String) -> Bool {
    let cleaned = text.lowercased().filter { $0.isLetter }
    return cleaned == !String(cleaned.reversed())
}
