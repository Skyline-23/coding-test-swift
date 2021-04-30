//
//  모의고사.swift
//  coding test
//
//  Created by 김부성 on 2021/04/24.
//

import Foundation

print(solution([5, 4, 4, 2, 1]))

func solution(_ answers:[Int]) -> [Int] {
    let per1 = [1, 2, 3, 4, 5]
    let per2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let per3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var num: [Int] = [0,0,0]
    var ans: [Int] = []
    
    for i in 0...answers.count - 1 {
        if per1[i % 5] == answers[i] {
            num[0] += 1
        }
        if per2[i % 8] == answers[i] {
            num[1] += 1
        }
        if per3[i % 10] == answers[i] {
            num[2] += 1
        }
    }
    for index in 0..<num.count {
        if num[index] == num.max()! {
            ans.append(index+1)
        }
    }
    ans = ans.sorted(by: <)
    return ans
}
