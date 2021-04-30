//
//  자릿수 더하기.swift
//  coding test
//
//  Created by 김부성 on 2021/04/25.
//

import Foundation

print(solution(123))

func solution(_ n:Int) -> Int {
    let num: [Int] = String(n).compactMap { $0.hexDigitValue }
    var ans:Int = 0
    for index in num {
        ans += index
    }
    return ans
}
