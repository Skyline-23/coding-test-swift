//
//  K번째수.swift
//  coding test
//
//  Created by 김부성 on 2021/04/26.
//

import Foundation

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.compactMap {i in array.enumerated().filter{i[0] - 1 <= $0.0 && $0.0 <= i[1] - 1 }.compactMap{$0.1}.sorted(by: <)[i[2] - 1]}
}
