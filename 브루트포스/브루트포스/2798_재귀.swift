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

func combination(arr: [Int], left: Int, index: Int, selected: [Int]){
    if left == 0{
        let sum = selected.reduce(0, {
            (first: Int, second: Int) -> Int in
                return first + second
        })
        if sum <= input[1] && max < sum{
            max = sum
        }
            
    }else if index == arr.count {
        return
    }else{
        var newSelected = selected
        newSelected.append(arr[index])
        combination(arr: arr, left: left - 1, index: index + 1, selected: newSelected)
        combination(arr: arr, left: left, index: index + 1, selected: selected)
    }
}

combination(arr: card, left: 3, index: 0, selected: [])
print(max)

