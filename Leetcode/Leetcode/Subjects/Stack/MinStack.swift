//
//  MinStack.swift
//  Leetcode
//
//  Created by DPP on 2020/11/16.
//

/*
 155. 最小栈
 设计一个支持 push ，pop ，top 操作，并能在常数时间内检索到最小元素的栈。

 push(x) —— 将元素 x 推入栈中。
 pop() —— 删除栈顶的元素。
 top() —— 获取栈顶元素。
 getMin() —— 检索栈中的最小元素。
 
 示例：
 输入：
 ["MinStack","push","push","push","getMin","pop","top","getMin"]
 [[],[-2],[0],[-3],[],[],[],[]]

 输出：
 [null,null,null,null,-3,null,0,-2]

 解释：
 MinStack minStack = new MinStack();
 minStack.push(-2);
 minStack.push(0);
 minStack.push(-3);
 minStack.getMin();   --> 返回 -3.
 minStack.pop();
 minStack.top();      --> 返回 0.
 minStack.getMin();   --> 返回 -2.
 */

import Foundation

class MinStack {
    var stack: [Int]
    var minStack: [Int]
    init() {
        stack = [Int]()
        minStack = [Int.max]
    }
    
    func push(_ x: Int) {
        stack.append(x)
        minStack.append(min(x, minStack[minStack.endIndex - 1]))
    }
    
    func pop() {
        stack.remove(at: stack.endIndex - 1)
        minStack.remove(at: minStack.endIndex - 1)
    }
    
    func top() -> Int {
        return stack[stack.endIndex - 1]
    }
    
    func getMin() -> Int {
        return minStack[minStack.endIndex - 1]
    }
}
