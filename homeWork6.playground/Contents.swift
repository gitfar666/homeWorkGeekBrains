import UIKit

struct Queue<T> {
    var array: [T] = []
    
    var look: T? {
        return array.first
    }
    
    mutating func addqueue(_ item: T) {
        array.append(item)
    }
    mutating func takequeue() -> T? {
        return array.isEmpty ? nil: array.removeFirst()
    }
    func map(_ some: (T) -> T) -> [T] {
        var someArray: [T] = []
        for T in array {
            let someTimer = some(T)
            someArray.append(someTimer)
        }
        return someArray
    }
    subscript(index: Int) -> T? {
        if index > array.count || index <= 0 {
            return nil
        } else {
            return array[index]
        }
    }
}
       

var queue = Queue<Int>()
queue.addqueue(1)
queue.addqueue(2)
queue.addqueue(3)

queue.map{$0 + 5}

queue.look
queue.takequeue()
queue.look
queue.takequeue()
queue.takequeue()
queue.takequeue()
