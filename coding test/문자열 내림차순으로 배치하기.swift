//
//  문자열 내림차순으로 배치하기.swift
//  coding test
//
//  Created by 김부성 on 2021/04/25.
//

import Foundation

print(solution("Zbcdefg"))

func solution(_ s:String) -> String {
    return String(s.sorted(by: >))
}
