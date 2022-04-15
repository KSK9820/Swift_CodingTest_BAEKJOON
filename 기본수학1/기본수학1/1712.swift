//
//  1712.swift
//  기본수학1
//
//  Created by 김수경 on 2022/03/21.
//

import Foundation

var input = readLine()!.split(separator: " ").map({ (value) in Int(String(value))! })

let able = input[2] - input[1]
if able < 1{
    print("-1")
}else{
    print((input[0] / able) + 1)
}
