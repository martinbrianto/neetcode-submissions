/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head?.next != nil else { return head }
        var arr = [Int]()
        var tail = head
        while tail?.next != nil {
            arr.insert(tail?.val ?? 0, at: 0)
            tail = tail?.next
        }
        arr.insert(tail?.val ?? 0, at: 0)

        var newHead = ListNode(arr.first!)
        var newTail = newHead
        for i in 1..<arr.count {
            let node = ListNode(arr[i])
            newTail.next = node
            newTail = node
        }
        return newHead
    }
}
