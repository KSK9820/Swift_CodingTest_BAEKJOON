//
//  2798.swift
//  브루트포스
//
//  Created by 김수경 on 2022/05/05.
//

import Foundation

let input = readLine()!.split(separator: " ").map({(value) in Int(String(value))!})
let card = readLine()!.split(separator: " ").map({(value) in Int(String(value))!})

var max: Int = 0

for i in 0..<card.count - 2{
    for j in 1..<card.count - 1 {
        for k in 2..<card.count {
            if i != j && j != k && k != i{
                var result = card[i] + card[j] + card[k]
                if result <= input[1] && result > max{
                    max = result
                }
            }
            
        }
    }
}

print(max)
