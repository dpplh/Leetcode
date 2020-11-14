//
//  MaxSubArray.swift
//  Leetcode
//
//  Created by DPP on 2020/11/14.
//

/*
 53. 最大子序和
 给定一个整数数组 nums ，找到一个具有最大和的连续子数组（子数组最少包含一个元素），返回其最大和。
 
 输入: [-2,1,-3,4,-1,2,1,-5,4]
 输出: 6
 解释: 连续子数组 [4,-1,2,1] 的和最大，为 6。
 */

import Foundation

class MaxSubArray {
    func maxSubArray(_ nums: [Int]) -> Int {
        var pre = 0
        var maxSum = nums[0]
        
        for i in nums {
            pre = max(pre + i, i)
            maxSum = max(pre, maxSum)
        }
        
        return maxSum
    }
}
