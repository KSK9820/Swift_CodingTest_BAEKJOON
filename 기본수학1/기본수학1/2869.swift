//
//  2869.swift
//  기본수학1
//
//  Created by 김수경 on 2022/04/14.
//

import Foundation

var input = readLine()!.split(separator: " ").map({(value) in Double(String(value))!})

var A = input[0]
var B = input[1]
var V = input[2]

print(Int(ceil((V - B) / (A - B))))
