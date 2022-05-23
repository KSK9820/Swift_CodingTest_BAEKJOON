//
//  2750_버블정렬.swift
//  정렬
//
//  Created by 김수경 on 2022/05/06.
//

import Foundation

var input = Int(readLine()!)!
var arr = [Int](repeating: 0, count: input)

for i in 0..<input{
    arr[i] = Int(readLine()!)!
}

func bubbleSort(a: [Int], n: Int) -> [Int]{
    var arr = a
    for i in 0..<n{
        for j in 0..<n - i{
            if arr[j] > arr[j + 1]{
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
    return arr
}


let result = bubbleSort(a: arr, n: input)

for i in 0..<input{
    print(result[i])
}

