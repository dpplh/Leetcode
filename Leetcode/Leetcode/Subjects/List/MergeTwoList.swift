//
//  MergeTwoList.swift
//  Leetcode
//
//  Created by DPP on 2020/11/11.
//

/*
 21. 合并两个有序链表

 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。

 示例：

 输入：1->2->4, 1->3->4
 输出：1->1->2->3->4->4
 */

import Foundation

fileprivate class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

fileprivate class MergeTwoList {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let preHead = ListNode(-1)
        var prev = preHead
        
        var l1Var = l1
        var l2Var = l2
        while l1Var != nil && l2Var != nil {
            if l1Var!.val < l2Var!.val {
                prev.next = l1Var
                l1Var = l1Var!.next
            } else {
                prev.next = l2Var
                l2Var = l2Var!.next
            }
            
            prev = prev.next!
        }
        
        prev.next = l1Var != nil ? l1Var : l2Var
        
        return preHead.next
    }
}
