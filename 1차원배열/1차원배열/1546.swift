//
//  1546.swift
//  1차원배열
//
//  Created by 김수경 on 2022/03/10.
//

let input = Int(readLine()!)!
var score = readLine()!.split(separator: " ").map({ (value) in Double(String(value))! })
let max = score.max()
var total = 0.0

for i in 0..<input{
    score[i] = score[i] / max! * 100
    total += score[i]
}
print(total / Double(input))
