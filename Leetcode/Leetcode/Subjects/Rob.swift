//
//  Rob.swift
//  Leetcode
//
//  Created by DPP on 2020/11/18.
//

/*
 198. 打家劫舍
 你是一个专业的小偷，计划偷窃沿街的房屋。每间房内都藏有一定的现金，影响你偷窃的唯一制约因素就是相邻的房屋装有相互连通的防盗系统，如果两间相邻的房屋在同一晚上被小偷闯入，系统会自动报警
 给定一个代表每个房屋存放金额的非负整数数组，计算你 不触动警报装置的情况下 ，一夜之内能够偷窃到的最高金额。
 
 示例 1：
 输入：[1,2,3,1]
 输出：4
 解释：偷窃 1 号房屋 (金额 = 1) ，然后偷窃 3 号房屋 (金额 = 3)。
      偷窃到的最高金额 = 1 + 3 = 4 。
 
 示例 2：
 输入：[2,7,9,3,1]
 输出：12
 解释：偷窃 1 号房屋 (金额 = 2), 偷窃 3 号房屋 (金额 = 9)，接着偷窃 5 号房屋 (金额 = 1)。
      偷窃到的最高金额 = 2 + 9 + 1 = 12 。

 提示
 0 <= nums.length <= 100
 0 <= nums[i] <= 400
 */

import Foundation

class Rob {
    // 数组存储结果
//    func rob(_ nums: [Int]) -> Int {
//        if nums.count == 0 {
//            return 0
//        }
//
//        if nums.count == 1, let first = nums.first {
//            return first
//        }
//
//        var res = [Int](repeatElement(0, count: nums.count))
//        res[0] = nums[0]
//        res[1] = max(res[0], nums[1])
//        for index in 2..<nums.count {
//            let value = nums[index]
//            res[index] = max(res[index - 2] + value , res[index - 1])
//        }
//
//        return res.last!
//    }
    
    // 滚动数组
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        if nums.count == 1, let first = nums.first {
            return first
        }
        
        var first = nums[0]
        var second = max(nums[0], nums[1])
        for index in 2..<nums.count {
            let temp = second
            second = max(first + nums[index], second)
            first = temp
        }
        
        return second
    }
}
