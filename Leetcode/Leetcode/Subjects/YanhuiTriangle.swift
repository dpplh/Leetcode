//
//  YanhuiTriangle.swift
//  Leetcode
//
//  Created by DPP on 2020/11/7.
//

import Foundation

/*
 杨辉三角
                1
            1      1
        1      2       1
    1      3       3       1
 1      4       6       4       1
 */

class YanhuiTriangle {
    func getRow(_ rowIndex: Int) -> [Int] {
        var curArray: [Int] = []
        var preArray: [Int] = []
        
        for i in 0...rowIndex {
            curArray = [Int]()
            for j in 0...i {
                if j == 0 || j == i {
                    curArray.append(1)
                } else {
                    curArray.append(preArray[j - 1] + preArray[j])
                }
            }
            
            preArray = curArray
        }
        
        return curArray
    }
}
