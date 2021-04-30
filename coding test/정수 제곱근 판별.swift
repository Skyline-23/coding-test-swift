//
//  정수 제곱근 판별.swift
//  coding test
//
//  Created by 김부성 on 2021/04/28.
//

import Foundation

print(solution(121))

func solution(_ n:Int64) -> Int64 {
    let num = sqrt(Double(n))
    print(num)
    return num.truncatingRemainder(dividingBy: 1) == 0 ? Int64((num + 1) * (num + 1)) : Int64(-1)
}
