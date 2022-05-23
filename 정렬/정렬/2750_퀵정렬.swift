//
//  2750_퀵정렬.swift
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
//
//var input = 7
//var arr = [7, 6, 1, 2, 3, 4, 5]

func quickSort(start: Int, end: Int){
    if start >= end { return }
    var left = start
    var right = end
    var pivot = (left + right) / 2
    
    while left <= right{
        while left < end && arr[left] < arr[pivot]{
            left += 1
        }
        while right > start && arr[right] > arr[pivot]{
            right -= 1
        }
        
        if left <= right {
            if pivot == left {
                pivot = right
            }else if pivot == right{
                pivot = left
            }
            arr.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
    
    
    if start < right {
        quickSort(start: start, end: right)
    }
    if left < end {
        quickSort(start: left, end: end)
    }
}
   

quickSort(start: 0, end: input - 1)

for i in 0..<input{
    print(arr[i])
}



