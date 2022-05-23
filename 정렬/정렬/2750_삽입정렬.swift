//
//  2750_삽입정렬.swift
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

func insertionSort(a: [Int], n: Int) -> [Int]{
    var arr = a
    for i in 1..<n{
        var temp = arr[i]
        var j = i - 1
        while j >= 0 && arr[j] > temp {
            arr[j+1] = arr[j]
            j -= 1
        }
        arr[j+1] = temp
    }
    return arr
}


let result = insertionSort(a: arr, n: input)
for i in 0..<input{
    print(result[i])
}



