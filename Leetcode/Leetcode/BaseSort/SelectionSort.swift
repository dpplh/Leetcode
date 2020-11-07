//
//  SelectionSort.swift
//  Leetcode
//
//  Created by DPP on 2020/11/7.
//

/*
 选择排序
 空间复杂度：O(1)
 时间复杂度：最好最坏情况都是O(n2)
 原地排序：❌
 */
import Foundation

class SelectionSort {
    class func sort(_ a: inout [Int], n: Int) {
        guard n > 1 else {
            return
        }
        
        for i in 0..<n {
            var minPos = i
            for j in i+1..<n {
                // 1. 找出最小索引
                if a[minPos] > a[j] {
                    minPos = j
                }
            }
            
            // 2. 最小索引与i交换
            let temp = a[i]
            a[i] = a[minPos]
            a[minPos] = temp
        }
    }
}
