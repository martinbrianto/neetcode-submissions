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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var c1 = list1
        var c2 = list2
        let head = ListNode(-1)
        var node = head

        while c1 != nil && c2 != nil {
            if c1!.val < c2!.val {
                node.next = c1
                c1 = c1?.next
            } else {
                node.next = c2
                c2 = c2?.next
            }
            node = node.next!
        }

        node.next = c1 ?? c2

        return head.next
    }
}
