//
//  신규 아이디 추천.swift
//  coding test
//
//  Created by 김부성 on 2021/04/24.
//

import Foundation

print(solution("abcdefghijklmn.p"))

func solution(_ new_id:String) -> String {
    // 1, 2단계
    var id = new_id.lowercased().filter { $0.isfillterd }
    
    // 3단계
    var cnt = 0
    var str = ""
    for i in id {
        if i == "." {
            cnt += 1
        }
        else {
            if cnt > 0 {
                str.append(".")
            }
            cnt = 0
            str.append(i)
        }
    }
    id = str
    
    // 4단계 (뒷점은 이미 3단계에서 걸러짐)
    if id.hasPrefix(".") {
        id = String(id.dropFirst())
    }
    
    // 5단계
    if id.isEmpty == true {
        id.append("a")
    }
    
    // 6단계
    if id.count >= 16 {
        id = String(id.dropLast(id.count - 15))
        if id.hasSuffix(".") {
            id = String(id.dropLast())
        }
    }
    
    // 7단계
    if id.count <= 2 {
        for _ in id.count ... 2 {
            id.append(id[id.index(before: id.endIndex)])
        }
    }
    
    return id
}

extension Character {
    var isfillterd: Bool {
        let ascii = self.asciiValue!
        if ascii >= 97 && ascii <= 122 || ascii >= 48 && ascii <= 57 || self == "-" || self == "_" || self == "."  { return true }
        return false
    }
}
