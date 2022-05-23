//
//  2750_선택정렬.swift
//  정렬
//
//  Created by 김수경 on 2022/05/09.
//

import Foundation

var input = Int(readLine()!)!
var arr = [Int](repeating: 0, count: input)

for i in 0..<input{
    arr[i] = Int(readLine()!)!
}

func selectionSort(a: [Int], n: Int) -> [Int]{
    var arr = a
    for i in 0..<n-1{
        var min = i
        for j in i+1..<n{
            if arr[j] < arr[min]{
                min = j
            }
        }
        arr.swapAt(min, i)
    }
    return arr
}


let result = selectionSort(a: arr, n: input)
for i in 0..<input{
    print(result[i])
}

