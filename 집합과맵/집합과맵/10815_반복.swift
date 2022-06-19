//
//  10815_반복.swift
//  집합과맵
//
//  Created by 김수경 on 2022/06/15.
//
import Foundation

let num = Int(readLine()!)!
var  myNum = readLine()!.split(separator: " ").map({(value) in Int(value)!}).sorted(by: <)
let checknum = Int(readLine()!)!
let checkNum = readLine()!.split(separator: " ").map({(value) in Int(value)!})

func binarySearch(arr: [Int], l: Int, r: Int,  target: Int) -> Bool{
    var left = l
    var right = r

    while left <= right{
        let midIndex: Int = (left + right) / 2
        if arr[midIndex] > target {
            right = midIndex - 1
        }else if arr[midIndex] < target{
            left = midIndex + 1
        }else{
            return true
        }
    }
    return false
}

var result = ""
for i in checkNum{
    if binarySearch(arr: myNum, l: 0, r: num - 1, target: i){
        result += "1 "
    }else{
        result += "0 "
    }
}
print(result)

