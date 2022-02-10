//
//  1330.swift
//  if문
//
//  Created by 김수경 on 2022/02/10.
//

import Foundation

var line = readLine()!.split(separator: " ")
let a = Int(line[0])!
let b = Int(line[1])!

if a > b{
    print(">")
}else if a<b {
    print("<")
}else {
    print("==")
}
