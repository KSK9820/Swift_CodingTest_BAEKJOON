//
//  2480.swift
//  if문
//
//  Created by 김수경 on 2022/03/10.
//

import Foundation

let input = readLine()!.split(separator: " ").map({(value) in Int(value)!})
let set = Set(input)
var money = 0
if set.count == 1{
    money = set.first! * 1000 + 10000
}else if set.count == 2{
    if input[0] == input[1]{
        money = input[0] * 100 + 1000
    }else if input[0] == input[2]{
        money = input[0] * 100 + 1000
    }else{
        money = input[1] * 100 + 1000
    }
}else{
    set.sorted()
    money = set.sorted().last! * 100
}

print(money)
