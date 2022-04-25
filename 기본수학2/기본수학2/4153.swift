//
//  4153.swift
//  기본수학2
//
//  Created by 김수경 on 2022/04/25.
//

import Foundation


while true{
    var input = readLine()!.split(separator: " ").map({(value) in Float(String(value))!})

    if input[0] == 0 && input[1] == 0 && input[2] == 0{
        break
    }
    
    input = input.sorted()
    if pow(input[0], 2) + pow(input[1], 2) == pow(input[2], 2){
        print("right")
    }else{
        print("wrong")
    }
}
