//
//  10871.swift
//  for문
//
//  Created by 김수경 on 2022/02/11.
//

import Foundation

let line1 = readLine()!.split(separator: " ")
let line2 = readLine()!.split(separator: " ")

let count = Int(line1[0])!
let number = Int(line1[1])!

var str = ""

for i in 0..<count{
    if Int(line2[i])! < number{
        str.write("\(line2[i]) ")
    }
}
print(str)
