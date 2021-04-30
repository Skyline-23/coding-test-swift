//
//  핸드폰 번호 가리기.swift
//  coding test
//
//  Created by 김부성 on 2021/04/28.
//

import Foundation

print(solution("01033334444"))

func solution(_ phone_number:String) -> String {
    return String(phone_number.enumerated().compactMap {$0.0 < phone_number.count - 4 ? "*" : $0.1 })
}
