//
//  8958.swift
//  1차원배열
//
//  Created by 김수경 on 2022/03/10.
//

import Foundation

var input = Int(readLine()!)!

for i in 0..<input{
    var test = readLine()!.map({ (value) in Character(extendedGraphemeClusterLiteral: value) })
    var score = [Int](repeatElement(0, count: test.count))
    var total = 0
    
    
    if test[0] == "O" {
        score[0] = 1
    }else {
        score[0] = 0
    }
    for j in 1..<test.count{
        if test[j] == "O" && test[j - 1] == "O" {
            score[j] = score[j - 1] + 1
        }else if test[j] == "O"{
            score[j] = 1
        }else{
            score[j] = 0
        }
        total += score[j]
    }
        print(total + score[0])
}
