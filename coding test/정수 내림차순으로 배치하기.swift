//
//  정수 내림차순으로 배치하기.swift
//  coding test
//
//  Created by 김부성 on 2021/04/27.
//

import Foundation

print(solution(118372))

func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted().reversed()))!
}
