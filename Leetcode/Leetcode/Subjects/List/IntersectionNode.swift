//
//  IntersectionNode.swift
//  Leetcode
//
//  Created by DPP on 2020/11/16.
//

/*
 160. 相交链表
 编写一个程序，找到两个单链表相交的起始节点。
 */

import Foundation

fileprivate class ListNode: Equatable {
    static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.val == rhs.val && lhs.next ==  rhs.next
    }
    
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

fileprivate class IntersectionNode {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil {
            return nil
        }
        
        var pA = headA
        var pB = headB
        
        while pA != pB {
            pA = pA == nil ? headB : pA!.next
            pB = pB == nil ? headA : pB!.next
        }
        
        return pA
    }
}
