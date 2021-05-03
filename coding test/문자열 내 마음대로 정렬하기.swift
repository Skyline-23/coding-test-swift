//
//  문자열 내 마음대로 정렬하기.swift
//  coding test
//
//  Created by 김부성 on 2021/04/27.
//

import Foundation

print(solution(["abce", "abcd", "cdx"], 2))

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{Array($0)[n] == Array($1)[n] ? $0 < $1 : Array($0)[n] < Array($1)[n]}
}
