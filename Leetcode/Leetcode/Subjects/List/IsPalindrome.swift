//
//  IsPalindrome.swift
//  Leetcode
//
//  Created by DPP on 2020/11/19.
//

/*
 234. 回文链表
 请判断一个链表是否为回文链表。

 示例 1:
 输入: 1->2
 输出: false
 
 示例 2:
 输入: 1->2->2->1
 输出: true
 */

import Foundation


class IsPalindrome {
    class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }
    
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil || head?.next == nil {
            return true
        }
        
        // 找到中间节点
        var slowHead = head
        var fastHead = head
        
        while fastHead != nil {
            slowHead = slowHead?.next
            fastHead = fastHead?.next?.next
        }
        
        // 反转slowHead链表
        var revertHead: ListNode? = nil
        while slowHead != nil {
            let tempHead = slowHead?.next
            slowHead?.next = revertHead
            revertHead = slowHead
            slowHead = tempHead
        }
        
        var positiveHead = head
        while revertHead != nil && positiveHead != nil {
            if revertHead?.val != positiveHead?.val {
                return false
            }
            
            positiveHead = positiveHead?.next
            revertHead = revertHead?.next
        }
        
        
        return true
    }
}
