//
//  자연수 뒤집어 배열로 만들기.swift
//  coding test
//
//  Created by 김부성 on 2021/04/25.
//

import Foundation

print(solution(12354))

func solution(_ n:Int64) -> [Int] {
    return String(n).compactMap {$0.hexDigitValue}.reversed()
}
