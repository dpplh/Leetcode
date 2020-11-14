//
//  ValidBracket.swift
//  Leetcode
//
//  Created by DPP on 2020/11/11.
//

import Foundation

/*
 20. 有效的括号
 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串，判断字符串是否有效。

 有效字符串需满足：

 左括号必须用相同类型的右括号闭合。
 左括号必须以正确的顺序闭合。
 注意空字符串可被认为是有效字符串。
 */

class ValidBracket {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 == 1 {
            return false
        }
        
        var stack: [String] = []
        for i in s {
            if i == ")" || i == "}" || i == "]" {
                guard let left = stack.last else {
                    return false
                }
                
                if stack.isEmpty || !isMatch(left, right: "\(i)") {
                    return false
                }
                
                stack.remove(at: stack.endIndex - 1)
            } else {
                stack.append("\(i)")
            }
        }
        
        return stack.isEmpty
    }
    
    func isMatch(_ left: String, right: String) -> Bool {
        switch left {
        case "(":
            return right == ")"
        case "{":
            return right == "}"
        case "[":
            return right == "]"
        default:
            return false
        }
    }
}
