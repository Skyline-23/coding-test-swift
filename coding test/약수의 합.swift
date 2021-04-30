//
//  약수의 합.swift
//  coding test
//
//  Created by 김부성 on 2021/04/26.
//

import Foundation

print(solution(1))

func solution(_ n:Int) -> Int {
    return n == 0 ? 0 : (1...n).compactMap { n % $0 == 0 ? $0 : 0 }.reduce(0, +)
}
