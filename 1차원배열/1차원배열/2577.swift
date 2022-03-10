//
//  2577.swift
//  1차원배열
//
//  Created by 김수경 on 2022/03/10.
//

import Foundation
let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let total = String(a * b * c)
var count = [Int](repeating: 0, count: 10)

for i in total {
    count[Int(String(i))!] += 1
}
for i in 0..<10{
    print(count[i])
}
