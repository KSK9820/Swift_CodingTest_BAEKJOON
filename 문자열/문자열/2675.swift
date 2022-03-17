//
//  2675.swift
//  문자열
//
//  Created by 김수경 on 2022/03/14.
//

import Foundation

let T = Int(readLine()!)!


for i in 0..<T{
    var input = readLine()!.split(separator: " ")
    var R = Int(input[0])!
    var S = Array(input[1])

    var P = ""
    for j in 0..<S.count{
        for k in 0..<R{
            P += String(S[j])
        }
    }
    print(P)
    
}
