//
//  1157.swift
//  문자열
//
//  Created by 김수경 on 2022/03/14.
//

import Foundation

var S = Array(readLine()!)
var alphabet = [Int](repeating: 0, count: 26)
var count = 0
var position: Int!

for (index, value) in S.enumerated(){
    if Int(value.asciiValue!) >= 97{
        alphabet[Int(value.asciiValue!) - 97] += 1
    }else{
        alphabet[Int(value.asciiValue!) - 65] += 1
    }
}
var max = alphabet.max()

for (index, value) in alphabet.enumerated(){
    if value == max{
        count += 1
        position = index
    }
}

if count > 1{
    print("?")
}else{
    print(Character(UnicodeScalar(position + 65)!))
}
