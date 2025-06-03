
/**
 * 将两个升序链表合并为一个新的 升序 链表并返回。
 * 新链表是通过拼接给定的两个链表的所有节点组成的。 
 * 
 * 输入：l1 = [1,2,4], l2 = [1,3,4]
 * 输出：[1,1,2,3,4,4]
 * 
 * 输入：l1 = [], l2 = []
 * 输出：[]
 * 输入：l1 = [], l2 = [0]
 * 输出：[0]
 */

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */


// 构造 l1 = [1,2,4]
// ListNode l1 = ListNode(1, ListNode(2, ListNode(4)));

// 构造 l2 = [1,3,4]
// ListNode l2 = ListNode(1, ListNode(3, ListNode(4)));

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    // 一个新的链表用来处理 需要一个链表的头
    ListNode listNode = ListNode();
    ListNode? current = listNode;
    
    while(list1 != null && list2 != null) {
      if (list1.val < list2.val) {
        current?.next = list1;
        list1 = list1.next;
      } else {
        current?.next = list2;
        list2 = list2.next;
      }

      current = current?.next!;
    }

    current?.next = list1 ?? list2;
    
    return listNode.next;
  }
}

void main () {
  Solution s = Solution();

  print(s.mergeTwoLists(
    ListNode(1, ListNode(2, ListNode(4))), 
    ListNode(1, ListNode(3, ListNode(4)))
  ));
}