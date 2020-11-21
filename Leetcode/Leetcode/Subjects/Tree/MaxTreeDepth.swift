//
//  MaxTreeDepth.swift
//  Leetcode
//
//  Created by DPP on 2020/11/14.
//

/*
 104. 二叉树的最大深度
 给定一个二叉树，找出其最大深度。

 二叉树的深度为根节点到最远叶子节点的最长路径上的节点数。

 说明: 叶子节点是指没有子节点的节点。

 示例：
 给定二叉树 [3,9,20,null,null,15,7]，

     3
    / \
   9  20
     /  \
    15
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

fileprivate class MaxTreeDepth {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        return max(maxDepth(root?.left), maxDepth(root?.right)) + 1
    }
}
