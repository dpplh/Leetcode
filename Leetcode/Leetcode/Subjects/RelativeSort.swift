//
//  RelativeSort.swift
//  Leetcode
//
//  Created by DPP on 2020/11/14.
//

/*
 1122. 数组的相对排序
 给你两个数组，arr1 和 arr2，

 arr2 中的元素各不相同
 arr2 中的每个元素都出现在 arr1 中
 对 arr1 中的元素进行排序，使 arr1 中项的相对顺序和 arr2 中的相对顺序相同。未在 arr2 中出现过的元素需要按照升序放在 arr1 的末尾。

 输入：arr1 = [2,3,1,3,2,4,6,7,9,2,19], arr2 = [2,1,4,3,9,6]
 输出：[2,2,2,1,4,3,3,9,6,7,19]
 */

import Foundation

class RelativeSort {
    // 捅排序
    func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var bucket: [Int] = [Int](repeatElement(0, count: 1001))
        for i in arr1 {
            bucket[i] += 1
        }
        
        var res: [Int] = []
        for i in arr2 {
            while bucket[i] > 0 {
                res.append(i)
                bucket[i] -= 1
            }
        }
        
        for i in 0..<1001 {
            if bucket[i] == 0 {
                continue
            }
            while bucket[i] > 0 {
                res.append(i)
                bucket[i] -= 1
            }
        }
        
        return res
    }
}
