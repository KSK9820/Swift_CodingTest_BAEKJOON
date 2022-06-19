//
//  10815_재귀.swift
//  집합과맵
//
//  Created by 김수경 on 2022/06/16.
//

import Foundation

let num = Int(readLine()!)!
var  myNum = readLine()!.split(separator: " ").map({(value) in Int(value)!}).sorted(by: <)
let checknum = Int(readLine()!)!
let checkNum = readLine()!.split(separator: " ").map({(value) in Int(value)!})

func binarySearch(arr: [Int], left: Int, right: Int,  target: Int) -> Bool{
    var result = false
    let midIndex: Int = (left + right) / 2

    if left > right {
        return false
    }

    if arr[midIndex] > target {
        result = binarySearch(arr: arr, left: left, right: midIndex - 1, target: target)
    }
    else if arr[midIndex] < target {
        result = binarySearch(arr: arr, left: midIndex + 1, right: right, target: target)
    }else{
        return true
    }

    return result
}

var result = ""
for i in checkNum{
    if binarySearch(arr: myNum, left: 0, right: num - 1, target: i){
        result += "1 "
    }else{
        result += "0 "
    }
}
print(result)


