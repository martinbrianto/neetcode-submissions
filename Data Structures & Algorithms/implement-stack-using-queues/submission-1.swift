class MyStack {

    var queue = [Int]()

    init() {

    }

    func push(_ x: Int) {
        queue.append(x)
    }

    func pop() -> Int {
        for i in 0..<queue.count - 1 {
            queue.append(queue.removeFirst())
        }
        return queue.removeFirst()
    }

    func top() -> Int {
        guard let last = queue.last else { return -1 }
        return last
    }

    func empty() -> Bool {
        return queue.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let param_2 = obj.pop()
 * let param_3 = obj.top()
 * let param_4 = obj.empty()
 */
