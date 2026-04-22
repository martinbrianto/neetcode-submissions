class Solution {

    var cache = [Int?](repeating: nil, count: 46)
    
    func climbStairs(_ n: Int) -> Int { 
        if n == 1 { return 1 }
        else if n == 2 { return 2 }
        else if cache[n] != nil { return cache[n] ?? -1 }

        cache[n] = climbStairs(n-1) + climbStairs(n-2)

        return cache[n]!
    }
}
