//
//  SalaryAverage.swift
//  Leetcode
//
//  Created by DPP on 2020/11/7.
//

/*
 1491. 去掉最低工资和最高工资后的工资平均值
 给你一个整数数组 salary ，数组里每个数都是 唯一 的，其中 salary[i] 是第 i 个员工的工资。

 请你返回去掉最低工资和最高工资以后，剩下员工工资的平均值。
 */
import Foundation

class SalaryAverage {
    class func solution(_ salary: [Int]) -> Double {
        // 1. 排序
        var a = salary
        sort(&a, n: a.count)
        
        // 2. 计算平均
        var total: Int = 0
        for i in 1..<a.count - 1 {
            total += a[i]
        }
        
        return Double(total) / Double((a.count - 2))
    }
    
    class func sort(_ a: inout [Int], n: Int) {
        guard n > 1 else {
            return
        }
        
        for i in 0..<n {
            var flag: Bool = false
            for j in 0..<n-i-1 {
                if a[j] > a[j + 1] {
                    let temp = a[j]
                    a[j] = a[j + 1]
                    a[j + 1] = temp
                    flag = true
                }
            }
            
            if !flag {
                break
            }
        }
    }
}
