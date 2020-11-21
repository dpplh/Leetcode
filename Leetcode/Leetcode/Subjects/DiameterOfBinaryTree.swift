//
//  DiameterOfBinaryTree.swift
//  Leetcode
//
//  Created by DPP on 2020/11/21.
//

/*
 543. 二叉树的直径
 
 给定一棵二叉树，你需要计算它的直径长度。一棵二叉树的直径长度是任意两个结点路径长度中的最大值。这条路径可能穿过也可能不穿过根结点。
 示例 :
 给定二叉树
           1
          / \
         2   3
        / \
       4   5
 返回 3, 它的长度是路径 [4,2,1,3] 或者 [5,2,1,3]。

 注意：两结点之间的路径长度是以它们之间边的数目表示。
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

fileprivate class DiameterOfBinaryTree {
    var maxDepth = 0
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        depth(root)
        
        return maxDepth
    }
    
    @discardableResult
    func depth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        let leftDepth = root?.left == nil ? 0 : depth(root?.left) + 1
        let rightDepth = root?.right == nil ? 0 : depth(root?.right) + 1
        
        maxDepth = max(maxDepth, leftDepth + rightDepth)
        
        return max(leftDepth, rightDepth)
    }
}
