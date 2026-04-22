class MinStack {

    var minVal = Int.max
    var minStack = [Int]()
    var stack = [Int]()

    init() {

    }

    func push(_ val: Int) {
        if minStack.isEmpty { minStack.append(val) }
        else if minStack.last! >= val { minStack.append(val) }
        stack.append(val)
    }

    func pop() {
        if !minStack.isEmpty, stack.last! == minStack.last! {
            minStack.popLast()
        }
        stack.popLast()
    }

    func top() -> Int {
        return stack.last!
    }

    func getMin() -> Int {
        if minStack.isEmpty { return stack.last! }
        return minStack.last!
    }
}
