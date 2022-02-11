//
//  11022.swift
//  for문
//
//  Created by 김수경 on 2022/02/11.
//

import Foundation

let number = Int(readLine()!)!


var str = ""
for i in 1...number{
    let line = readLine()!.split(separator: " ")

    let a = Int(line[0])!
    let b = Int(line[1])!
    str += "Case #\(i): \(a) + \(b) = \(a+b)\n"
}
print(str)

