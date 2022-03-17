//
//  5622.swift
//  문자열
//
//  Created by 김수경 on 2022/03/14.
//

import Foundation

var s: [Character] = Array(readLine()!)
var result = 0

for char in s{
    switch char {
    case "A","B","C":
        result += 3
    case "D","E","F":
        result += 4
    case "G","H","I":
        result += 5
    case "J","K","L":
        result += 6
    case "M","N","O":
        result += 7
    case "P","Q","R","S":
        result += 8
    case "T","U","V":
        result += 9
    default:
        result += 10
    }
}

print(result)
