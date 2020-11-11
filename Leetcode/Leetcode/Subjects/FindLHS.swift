//
//  FindLHS.swift
//  Leetcode
//
//  Created by DPP on 2020/11/10.
//

import Foundation

/*
 594
 和谐数组是指一个数组里元素的最大值和最小值之间的差别正好是1。

 现在，给定一个整数数组，你需要在所有可能的子序列中找到最长的和谐子序列的长度。

 示例 1:

 输入: [1,3,2,2,5,2,3,7]
 输出: 5
 原因: 最长的和谐数组是：[3,2,2,2,3].
 */

class FindLHS {
    
    // 遍历
    func findLHS(_ nums: [Int]) -> Int {
        var res = 0
        for i in nums {
            var flag = false
            var count = 0
            for j in nums {
                if i == j {
                    count += 1
                } else if i == (j + 1) {
                    count += 1
                    flag = true
                }
            }
            
            if flag {
                res = max(res, count)
            }
        }
        
        return res
    }
    
    // 哈希
    func findLHS2(_ nums: [Int]) -> Int {
        var map: [String: Int] = [:]
        for i in nums {
            if let count = map["\(i)"] {
                map["\(i)"] = count + 1
            } else {
                map["\(i)"] = 1
            }
        }
        
        var res = 0
        for (key, value) in map {
            if let intValue = Int(key) {
                let HLSValue = intValue + 1
                if let count = map["\(HLSValue)"] {
                    res = max(res, count + value)
                }
            }
        }
        
        return res
    }
}
