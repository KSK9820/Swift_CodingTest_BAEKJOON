//
//  7568.swift
//  브루트포스
//
//  Created by 김수경 on 2022/05/05.
//

import Foundation
let N = Int(readLine()!)!
var arr: [(x: Int, y: Int)] = [(Int, Int)](repeating: (0,0), count: N)
var rank = [Int](repeating: 1, count: N)
for i in 0..<N{
    let temp = readLine()!.split(separator: " ").map({(value) in Int(String(value))!})
    arr[i] = (temp[0], temp[1])
}


for i in 0..<N{
    for j in 0..<N{
        if arr[i].x < arr[j].x && arr[i].y < arr[j].y{
            rank[i] += 1
        }
    }
}


for i in 0..<N{
    print(rank[i], separator: " ", terminator: " ")
}


