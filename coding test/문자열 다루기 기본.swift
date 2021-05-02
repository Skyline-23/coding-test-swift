//
//  문자열 다루기 기본.swift
//  coding test
//
//  Created by 김부성 on 2021/05/02.
//

import Foundation

print(solution("1234"))

func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        if s.filter({$0.isNumber}) == s.compactMap({$0}) {return true}
        else {return false}
    }
    return false
}
