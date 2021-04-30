//
//  콜라츠 추측.swift
//  coding test
//
//  Created by 김부성 on 2021/04/29.
//

import Foundation

print(solution(6))

func solution(_ num:Int) -> Int {
    let cnt : Int = 0
    return divison(num, cnt)
}
func divison(_ num:Int, _ count: Int) -> Int {
    print(count, num)
    if count == 500 {return -1}
    else if num == 1 {return count}
    else if num % 2 == 0 {return divison(num / 2, count+1)}
    else {return divison(num * 3 + 1, count+1)}
}
