//
//  BubbleSort.swift
//  Leetcode
//
//  Created by DPP on 2020/11/7.
//

/*
 冒泡排序
 空间复杂度：O(1)
 时间复杂度：最好情况O(n)，最坏情况O(n2)
 原地排序：☑️
 */
import Foundation

class BubbleSort {
    class func sort(_ a: inout [Int], n: Int) {
        guard n > 1 else {
            return
        }
        
        for i in 0..<n {
            // 提前推出冒泡的标志位
            var flag: Bool = false
            
            for j in 0..<n-i-1 {
                // 相邻两个数，左边比右边大，交换
                if a[j] > a[j + 1] {
                    let temp = a[j]
                    a[j] = a[j + 1]
                    a[j + 1] = temp
                    
                    flag = true
                }
            }
            
            // 没有数据交换，提前推出
            if !flag {
                break
            }
        }
    }
}
