//
//  ReverseList.swift
//  Leetcode
//
//  Created by DPP on 2020/11/18.
//

/*
 206. 反转链表
 反转一个单链表。

 示例:
 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
 */

import Foundation

fileprivate class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

fileprivate class ReverseList {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var preHead: ListNode? = nil
        var curHead: ListNode? = head
        while curHead != nil {
            let tempListNode = curHead?.next
            curHead?.next = preHead
            preHead = curHead
            curHead = tempListNode
        }

        return preHead
    }
}
