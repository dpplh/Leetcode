//
//  LargestPerimeter.swift
//  Leetcode
//
//  Created by DPP on 2020/11/12.
//

/*
 976. 三角形的最大周长
 给定由一些正数（代表长度）组成的数组 A，返回由其中三个长度组成的、面积不为零的三角形的最大周长。

 如果不能形成任何面积不为零的三角形，返回 0。
 
 输入：[2,1,2]
 输出：5
 */

import Foundation

class LargestPerimeter {
    func largestPerimeter(_ A: [Int]) -> Int {
        var sortA = A
        
        sort(&sortA)
        
        for i in (2..<sortA.count).reversed() {
            if sortA[i] < sortA[i - 1] + sortA[i - 2] {
                return sortA[i] + sortA[i - 1] + sortA[i - 2]
            }
        }
        
        return 0
    }
    
    func sort(_ A: inout [Int]) {
        for i in 1..<A.count {
            let value = A[i]
            var index = i
            for j in (0...index - 1).reversed() {
                if A[j] > value {
                    index = j
                    A[j+1] = A[j]
                } else {
                    break
                }
            }
            
            A[index] = value
        }
    }
}

