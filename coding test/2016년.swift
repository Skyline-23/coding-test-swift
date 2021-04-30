//
//  2016년.swift
//  coding test
//
//  Created by 김부성 on 2021/04/25.
//

import Foundation

print(solution(12, 31))

func solution(_ a:Int, _ b:Int) -> String {
    let days = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    let month = [31,29,31,30,31,30,31,31,30,31,30]
    return days[(month[0..<a-1].reduce(0, +) + b) % 7]
}
