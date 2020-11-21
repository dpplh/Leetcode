//
//  InvertTree.swift
//  Leetcode
//
//  Created by DPP on 2020/11/19.
//

/*
 226. 翻转二叉树
 翻转一棵二叉树。
 
 输入:
            4
          /   \
         2     7
        / \   / \
       1   3 6   9
 输出:

            4
          /   \
         7     2
        / \   / \
       9   6 3   1
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

fileprivate class InvertTree {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }
        
        let leftTree = invertTree(root?.left)
        let rightTree = invertTree(root?.right)
        
        let tree = TreeNode(root!.val)
        tree.left = rightTree
        tree.right = leftTree
        
        return tree
    }
}
