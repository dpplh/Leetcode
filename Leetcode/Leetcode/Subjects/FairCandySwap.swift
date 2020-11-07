//
//  FairCandySwap.swift
//  Leetcode
//
//  Created by DPP on 2020/11/7.
//

import Foundation

class FairCandySwap {
    func solution(_ A: [Int], B: [Int]) -> [Int] {
        let sumA = A.reduce(0, {$0 + $1})
        let sumB = B.reduce(0, {$0 + $1})
                
        let delta = (sumB - sumA) / 2
        
        
        for i in A {
            let value = i + delta
            if B.contains(value) {
                return [i, i + delta]
            }
        }
        
        return []
    }
}
