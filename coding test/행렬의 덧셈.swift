//
//  행렬의 덧셈.swift
//  coding test
//
//  Created by 김부성 on 2021/04/28.
//

import Foundation

print(solution([[1,2],[2,3]], [[3,4],[5,6]]))

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return arr1.enumerated().compactMap {i in i.element.enumerated().compactMap{j in j.element + arr2[i.offset][j.offset]}}
}
