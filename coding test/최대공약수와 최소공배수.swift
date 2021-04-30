//
//  최대공약수와 최소공배수
//  coding test
//
//  Created by 김부성 on 2021/04/25.
//

import Foundation

solution(3, 12)

func solution(_ n:Int, _ m:Int) -> [Int] {
    var ans: [Int] = []
    ans.append(gcd(n: n, m: m))
    ans.append(lcm(n: n, m: m))
    return ans
}

func gcd(n: Int, m: Int) -> Int {
    var num1 = n
    var num2 = m
    
    if n < m {
        swap(&num1, &num2)
    }
    
    var temp = 0
    while (num2 != 0) {
        temp = num1 % num2
        num1 = num2
        num2 = temp
    }
    return num1
}

func lcm(n: Int, m: Int) -> Int {
    return n * m / gcd(n: n, m: m)
}
