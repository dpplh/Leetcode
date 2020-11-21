//
//  SymmetricTree.swift
//  Leetcode
//
//  Created by DPP on 2020/11/14.
//

/*
 101. 对称二叉树
 例如，二叉树 [1,2,2,3,4,4,3] 是对称的。

     1
    / \
   2   2
  / \ / \
 3  4 4  3
  

 但是下面这个 [1,2,2,null,3,null,3] 则不是镜像对称的:

     1
    / \
   2   2
    \   \
    3    3
 */

import Foundation

fileprivate class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

fileprivate class SymmetricTree {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return check(root, right: root)
    }
    
    func check(_ left: TreeNode?, right: TreeNode?) -> Bool {
        if left == nil && right == nil {
            return true
        }
        
        if (left == nil && right != nil) ||  (left != nil && right == nil) {
            return false
        }
        
        return left!.val == right!.val && check(left?.left, right: right?.right) && (check(left?.right, right: right?.left))
    }
}
