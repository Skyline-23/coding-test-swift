//
//  x만큼 간격이 있는 n개의 숫자.swift
//  coding test
//
//  Created by 김부성 on 2021/04/26.
//

import Foundation

print(solution(-4, 2))

func solution(_ x:Int, _ n:Int) -> [Int64] {
    return (0..<n).map{Int64(x + x * $0)}
}
