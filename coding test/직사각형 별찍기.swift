//
//  직사각형 별찍기.swift
//  coding test
//
//  Created by 김부성 on 2021/04/27.
//

import Foundation

var str = ""
readLine()!.components(separatedBy: [" "]).map{Int($0)!}.enumerated().forEach { $0.0 == 0 ? str = String(repeating: "*", count: $0.1) : print(String(repeating: str + "\n", count: $0.1)) }
