//
//  1110.swift
//  while문
//
//  Created by 김수경 on 2022/03/07.
//

import Foundation

var input = Int(readLine()!)!
var start = input
var count = 0

repeat{
    let a: Int!
    let b: Int!
    if start < 10 {
        a = 0
        b = start
    }else{
        a = start / 10
        b = start % 10
    }
    start = b * 10 + (a + b) % 10
    count += 1
}while start != input

print(count)
