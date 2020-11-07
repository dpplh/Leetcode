//
//  QuickSort.swift
//  Leetcode
//
//  Created by DPP on 2020/11/7.
//

/*
 快速排序
 空间复杂度：O(1)
 时间复杂度：最好情况O(nlogn)，最坏情况O(n2), 平均O(nlogn)
 原地排序：❌
 */

import Foundation

class QuickSort {
    class func sort(_ a: inout [Int], n: Int) {
        sortRecursive(&a, start: 0, end: a.count - 1)
    }
    
    class func sortRecursive(_ a: inout [Int], start: Int, end: Int) {
        guard start < end else {
            return
        }
        
        let pivot = a[end]
        var left = start
        var right = end - 1
        
        while left < right {
            while a[left] < pivot && left < right {
                left += 1
            }
            
            while a[right] > pivot && left < right {
                right -= 1
            }
            
            // 交换左右
            let temp = a[left]
            a[left] = a[right]
            a[right] = temp
        }
        
        if a[left] > pivot {
            a[end] = a[left]
            a[left] = pivot
        } else {
            left += 1
        }
        
        sortRecursive(&a, start: start, end: left - 1)
        sortRecursive(&a, start: left + 1, end: end)
    }
}
