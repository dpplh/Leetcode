//
//  IsPowerOfThree.swift
//  Leetcode
//
//  Created by DPP on 2020/11/11.
//

import Foundation

/*
 326. 3的幂
 给定一个整数，写一个函数来判断它是否是 3 的幂次方。如果是，返回 true ；否则，返回 false 。
 整数 n 是 3 的幂次方需满足：存在整数 x 使得 n == x3
 
 输入：n = 27
 输出：true
 
 输入：n = 45
 输出：false
 */

class IsPowerOfThree {
    func isPowerOfThree(_ n: Int) -> Bool {
        if n < 1 {
            return false
        }
        
        var res = n
        while res % 3 == 0 {
            res = res / 3
        }
        
        return res == 1
    }
}
