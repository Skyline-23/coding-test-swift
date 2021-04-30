//
//  나누어 떨어지는 숫자 배열.swift
//  coding test
//
//  Created by 김부성 on 2021/04/27.
//

import Foundation

print(solution([3,2,6], 10))

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    return arr.filter {$0 % divisor == 0}.sorted(by: <).isEmpty ? [-1] : arr.filter {$0 % divisor == 0}.sorted(by: <)
}
