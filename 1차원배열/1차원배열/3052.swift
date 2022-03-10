//
//  3052.swift
//  1차원배열
//
//  Created by 김수경 on 2022/03/08.
//

import Foundation

var count = [Int](repeating: 0, count: 42)
var cnt = 0

for i in 0..<10{
    var a = Int(readLine()!)!
    count[a % 42] = 1
}
for i in 0..<42{
    if count[i] == 1{
        cnt += 1
    }
}
print(count)
