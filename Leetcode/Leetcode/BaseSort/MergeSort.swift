//
//  MergeSort.swift
//  Leetcode
//
//  Created by DPP on 2020/11/7.
//

import Foundation

/*
 归并排序：先分后合 （递归解法）
 空间复杂度：O(n)
 时间复杂度：O(nlogn)
 原地排序：❌
 */

class MergeSort {
    class func sort(_ a: inout [Int], n: Int) {
        var reg: [Int] = []
        sortRecursive(&a, reg: &reg, start: 0, end: n - 1)
    }
    
    class func sortRecursive(_ a: inout [Int], reg: inout [Int], start: Int, end: Int) {
        guard start < end else {
            return
        }
        
        let len = end - start
        let mid = len >> 1 + start
        var start1 = start
        let end1 = mid
        var start2 = mid + 1
        let end2 = end
        
        sortRecursive(&a, reg: &reg, start: start1, end: end1)
        sortRecursive(&a, reg: &reg, start: start2, end: end2)
        
        var k = start
        while start1 <= end1 && start2 <= end2 {
            if a[start1] < a[start2] {
                reg[k] = a[start1]
                start1 += 1
            } else {
                reg[k] = a[start2]
                start2 += 1
            }
            k += 1
        }
        
        while start1 <= end1 {
            reg[k] = a[start1]
            start1 += 1
            k += 1
        }
        
        while start2 < end2 {
            reg[k] = a[start2]
            start2 += 1
            k += 1
        }
        
        for (index, value) in reg.enumerated() {
            a[index] = value
        }
    }
}
