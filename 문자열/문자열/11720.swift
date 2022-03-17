//
//  11720.swift
//  문자열
//
//  Created by 김수경 on 2022/03/14.
//

import Foundation

let input = Int(readLine()!)!
var arr = Array(readLine()!).map{Int(String($0))!}
var count = 0
for i in 0..<input{
    count += arr[i]
}
print(count)
