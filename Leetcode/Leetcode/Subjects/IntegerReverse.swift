//
//  IntegerReverse.swift
//  Leetcode
//
//  Created by DPP on 2020/11/14.
//

/*
 7. 整数反转
 给出一个 32 位的有符号整数，你需要将这个整数中每位上的数字进行反转。
 
 示例 1:
 输入: 123
 输出: 321
 示例 2:
 输入: -123
 输出: -321
 示例 3:
 输入: 120
 输出: 21
 */

import Foundation

class IntegerReverse {
    func reverse(_ x: Int) -> Int {
        var num = x
        var res = 0
        while num != 0 {
            let pop = num % 10
            if res > Int32.max / 10 || (res == Int32.max / 10 && pop > 7) {
                return 0
            }
            
            if res < Int32.min / 10 || (res == Int32.min / 10 && pop < -8) {
                return 0
            }
            
            res = res * 10 + pop
            num /= 10
        }
        
        return res
    }
}
