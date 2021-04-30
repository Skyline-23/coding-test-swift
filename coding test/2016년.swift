//
//  2016년.swift
//  coding test
//
//  Created by 김부성 on 2021/04/25.
//

import Foundation

print(solution2(5, 24))

func solution(_ a:Int, _ b:Int) -> String {
    let day: [String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    let month: [Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var cnt = 0
    for i in 0...a-1 {
        cnt += month[i]
    }
    return day[(cnt - month[a-1] + b) % 7]
}

func solution2(_ a:Int, _ b:Int) -> String {
    let days = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    let daysPerMonth = [31,29,31,30,31,30,31,31,30,31,30,31]
    return days[(daysPerMonth[0..<a-1].reduce(0){$0+$1}+b)%7]
}
