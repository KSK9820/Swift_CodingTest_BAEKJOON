//
//  4344.swift
//  1차원배열
//
//  Created by 김수경 on 2022/03/10.
//

import Foundation

let time = Int(readLine()!)!
for i in 0..<time{
    var line = readLine()!.split(separator: " ").map({ (value) in Double(value)! })
    var medium = (line.reduce(0, +) - line[0]) / line[0]
    var student = 0
    
    for j in 1..<line.count{
        if line[j] > medium{
            student += 1
        }
    }
    
    var percentage = Double(student) / line[0] * 100
    let digit: Double = pow(10, 3)
    print("\(String(format: "%.3f", (round(percentage * digit) / digit)))%")
    
}


