//
//  main.swift
//  브루트포스
//
//  Created by 김수경 on 2022/05/05.
//

import Foundation

import Foundation
let input = Int(readLine()!)!
var version = 0
var number = 0

while version < input{

//    if String(number).contains("666"){
//        version += 1
//    }
//    number += 1
    var n = number
    while  n >= 666{
        
        if n % 1000 == 666{
            version += 1
            break
        }else{
           n = n / 10
        }
    }
    number += 1
}
print(number - 1)








