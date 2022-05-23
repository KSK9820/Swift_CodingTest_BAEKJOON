//
//  2750_퀵정렬_filter.swift
//  정렬
//
//  Created by 김수경 on 2022/05/11.
//

import Foundation

var input = Int(readLine()!)!
var arr = [Int](repeating: 0, count: input)

for i in 0..<input{
    arr[i] = Int(readLine()!)!
}

func quickSort(a: [Int]) -> [Int]{
    var arr = a
    guard arr.count > 1 else {return arr}

    let pivot = arr[arr.count / 2]
    let left = arr.filter {$0 < pivot}
    let right = arr.filter {$0 > pivot}
    let equal = arr.filter {$0 == pivot}

    return quickSort(a: left) + equal + quickSort(a: right)
}




let result = quickSort(a: arr)
for i in 0..<input{
    print(result[i])
}

