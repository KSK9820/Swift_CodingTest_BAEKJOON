//
//  10950.swift
//  for문
//
//  Created by 김수경 on 2022/02/11.
//

import Foundation

let number = Int(readLine()!)!

for _ in 0..<number{
    let line = readLine()!.split(separator: " ")
    let a = Int(line[0])!
    let b = Int(line[1])!
    print(a+b)
}
