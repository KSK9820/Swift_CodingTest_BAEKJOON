//
//  10952.swift
//  10952문
//
//  Created by 김수경 on 2022/02/17.
//

import Foundation

var isZero = true

while isZero {
    var line = readLine()!.split(separator: " ")
    var a = Int(line[0])!
    var b = Int(line[1])!
    if a != 0 && b != 0 {
        print(a + b)
    }else{
        isZero = false
    }
}

