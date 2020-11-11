//
//  LongestPalindrome.swift
//  Leetcode
//
//  Created by DPP on 2020/11/11.
//

/*
 409. 最长回文串
 给定一个包含大写字母和小写字母的字符串，找到通过这些字母构造成的最长的回文串。
 在构造过程中，请注意区分大小写。比如 "Aa" 不能当做一个回文字符串。

 注意:
 假设字符串的长度不会超过 1010。
 
 示例 1:
 输入:"abccccdd"
 输出:7
 解释:我们可以构造的最长的回文串是"dccaccd", 它的长度是 7。
 */

import Foundation

class LongestPalindrome {
    
    func longestPalindrome(_ s: String) -> Int {
        var noPair: [Character] = []
        for i in s {
            if !noPair.contains(i) {
                noPair.append(i)
            } else {
                let index = noPair.firstIndex(of: i)!
                noPair.remove(at: index)
            }
        }
        
        if noPair.count == 0 {
            return s.count
        }
        
        return s.count - noPair.count + 1
    }
}
