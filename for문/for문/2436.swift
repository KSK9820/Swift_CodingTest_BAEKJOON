//
//  2436.swift
//  for문
//
//  Created by 김수경 on 2022/02/11.
//

import Foundation

let line = Int(readLine()!)!
var str = ""
for i in 1...line{
    for j in 1...i{
        str.write("*")
    }
    str.write("\n")
}
print(str)
