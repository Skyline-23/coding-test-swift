//
//  수박수박수박수박수박수?.swift
//  coding test
//
//  Created by 김부성 on 2021/04/26.
//

import Foundation

print(solution(4))

func solution(_ n:Int) -> String {
    return (0..<n).compactMap {$0%2 == 0 ? "수":"박"}.reduce("") {$0 + $1}
}
