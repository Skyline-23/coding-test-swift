//
//  예산.swift
//  coding test
//
//  Created by 김부성 on 2021/04/24.
//

import Foundation

print(solution([1,3,2,5,4], 9))

func solution(_ d:[Int], _ budget:Int) -> Int {
    let arr = d.sorted()
    var money = 0
    var ans = 0
    
    for i in arr {
        if money < budget {
            money += i
            ans += 1
            if money > budget {
                money -= i
                ans -= 1
            }
        }
        else {break}
    }
    return ans
}
