//
//  2750_계수정렬.swift
//  정렬
//
//  Created by 김수경 on 2022/05/17.
//

import Foundation

var input = Int(readLine()!)!
var arr = [Int](repeating: 0, count: input)

for i in 0..<input{
    arr[i] = Int(readLine()!)!
}

func countingSort(arr: inout [Int]){
    var max = arr.max()
    var count = [Int](repeating: 0, count: max! + 1)
    
    for i in 0..<input{
        count[arr[i]] += 1
    }
    
    for i in 0...max!{
        if count[i] != 0{
            for j in 0..<count[i] {
                print(i)
            }
        }
        
    }
}

countingSort(arr: &arr)
