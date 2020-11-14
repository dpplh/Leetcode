//
//  InsertionSort.swift
//  Leetcode
//
//  Created by DPP on 2020/11/7.
//

/*
 插入排序
 空间复杂度：O(1)
 时间复杂度：最好情况O(n)，最坏情况O(n2)
 原地排序：☑️
 */

import Foundation

class InsertionSort {
    class func sort(_ a: inout [Int], n: Int) {
        guard n > 1 else {
            return
        }
        
        for i in 1..<n {
            // 从第一个开始，与左边比较
            let value = a[i]
            
            var index = i
            for j in (0...index - 1).reversed() {
                // 如果左边比右边大，赋值
                if a[j] > value {
                    index = j
                    a[j + 1] = a[j]
                } else {
                    break
                }
            }
            
            // 将最后一个比较数放入数组
            a[index] = value
        }
    }
}
