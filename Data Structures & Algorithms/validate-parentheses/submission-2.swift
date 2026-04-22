class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for c in s {
            if c == "(" || c == "{" || c == "[" {
                stack.append(c)
            } else {
                if stack.isEmpty { return false }
                switch c {
                case ")":
                    if stack.last! == "(" {
                        stack.removeLast()
                    } else {
                        return false
                    }
                case "}":
                    if stack.last! == "{" {
                        stack.removeLast()
                    } else {
                        return false
                    }
                case "]":
                    if stack.last! == "[" {
                        stack.removeLast()
                    } else {
                        return false
                    }
                default: return false
                }
            }
        }

        return stack.isEmpty
    }
}
