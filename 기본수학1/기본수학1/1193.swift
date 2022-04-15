//
//  1193.swift
//  기본수학1
//
//  Created by 김수경 on 2022/03/21.
//

import Foundation
let input = Int(readLine()!)!

var i = 1
var t = 1

while input > t{
    i += 1
    t += i
}

var top: Int!
var bottom: Int!
if i % 2 == 1 {
    bottom = i - (t - input)
    top = i + 1 - bottom
}else {
    top = i - (t - input)
    bottom = i + 1 - top
    
}
if input == 1 {
    print("1/1")
}else{
    print ("\(top!)/\(bottom!)")
}

