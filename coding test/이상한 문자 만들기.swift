//
//  이상한 문자 만들기.swift
//  coding test
//
//  Created by 김부성 on 2021/04/26.
//

import Foundation

print(solution("try  hello world"))

func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").compactMap{ $0.enumerated().compactMap { $0.0 % 2 == 0 ? $0.1.uppercased() : $0.1.lowercased() } }
    return arr.map { $0.map{ $0 }.joined()}.joined(separator: " ")
}
