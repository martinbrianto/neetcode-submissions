class MinStack {

    var minStack = [Int]()
    var stack = [Int]()

    init() {

    }

    func push(_ val: Int) {
        stack.append(val)
        let minVal = min(minStack.last ?? val, val)
        minStack.append(minVal)
    }

    func pop() {
        stack.popLast()
        minStack.popLast()
    }

    func top() -> Int {
        return stack.last!
    }

    func getMin() -> Int {
        return minStack.last!
    }
}
