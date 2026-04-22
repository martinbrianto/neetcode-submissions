class MyStack {

    var stack = [Int]()

    init() {

    }

    func push(_ x: Int) {
        stack.append(x)
    }

    func pop() -> Int {
        guard let last = stack.last else { return -1 }
        stack.popLast()
        return last
    }

    func top() -> Int {
        guard let last = stack.last else { return -1 }
        return last
    }

    func empty() -> Bool {
        return stack.isEmpty
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
