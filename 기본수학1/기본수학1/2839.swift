//
//  2839.swift
//  기본수학1
//
//  Created by 김수경 on 2022/04/15.
//

import Foundation

var input = Int(readLine()!)!
var three = 0
var five = 0
var count = 0

while true{
    five = (input - 5 * count) / 5
    var left = input - five * 5
    three = left / 3
    
    if left % 3 == 0 && five >= 0 {
        print(five + three)
        break
    }else{
        count += 1
    }
    
    if five < 0{
        print("-1")
        break
    }

}
