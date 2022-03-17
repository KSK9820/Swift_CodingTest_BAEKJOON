//
//  2908.swift
//  문자열
//
//  Created by 김수경 on 2022/03/14.
//

import Foundation
var arr = readLine()!.split(separator: " ")
var first = Array(arr[0]).map({(value) in Int(String(value))!})
var second = Array(arr[1]).map({(value) in Int(String(value))!})
//first = first.reversed() as [Int]
//second = second.reversed() as [Int]



var num1 = 100 * first[2] + 10 * first[1] + first[0]
var num2 = 100 * second[2] + 10 * second[1] + second[0]

num1>num2 ? print(num1) : print(num2)


