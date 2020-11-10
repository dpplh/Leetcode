//
//  AlienSort.swift
//  Leetcode
//
//  Created by DPP on 2020/11/8.
//

import Foundation

/*
 953
 某种外星语也使用英文小写字母，但可能顺序 order 不同。字母表的顺序（order）是一些小写字母的排列。

 给定一组用外星语书写的单词 words，以及其字母表的顺序 order，只有当给定的单词在这种外星语中按字典序排列时，返回 true；否则，返回 false。

 示例：
 输入：words = ["hello","leetcode"], order = "hlabcdefgijkmnopqrstuvwxyz"
 输出：true
 解释：在该语言的字母表中，'h' 位于 'l' 之前，所以单词序列是按字典序排列的。
 */
class AlienSort {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        guard words.count > 1 else {
            fatalError()
        }
        
        var orderDic: [String: Int] = [:]
        
        // 插入空行
        orderDic[" "] = -1
        
        for (index, value) in order.enumerated() {
            orderDic["\(value)"] = index
        }
        
        for i in 0..<words.count-1 {
            let preWords: String = words[i]
            let nextWords: String = words[i + 1]
            let length = max(preWords.count, nextWords.count)
            
            for j in 0..<length {
                let stringIndex = preWords.index(preWords.startIndex, offsetBy: j)
                let preWord: String
                if j >= preWords.count {
                    preWord = " "
                } else {
                    preWord = "\(preWords[stringIndex])"
                }
                
                let nextWord: String
                if j >= nextWords.count {
                    nextWord = " "
                } else {
                    nextWord = "\(nextWords[stringIndex])"
                }
                
                let preOrder = orderDic["\(preWord)"]!
                let nextOrder = orderDic["\(nextWord)"]!
                
                if preOrder > nextOrder {
                    return false
                } else if preOrder < nextOrder {
                    break
                } else {
                    continue
                }
            }
        }
        
        return true
    }
}
