//
//  10816.swift
//  집합과맵
//
//  Created by 김수경 on 2022/06/16.
//

import Foundation

let num = Int(readLine()!)!
let  myNum = readLine()!.split(separator: " ").map({(value) in Int(value)!})

let checknum = Int(readLine()!)!
let original = readLine()!.split(separator: " ").map({(value) in Int(value)!})
let checkNum = original.sorted(by: <)

var Dic = [Int:Int]()
for i in 0..<checknum{
    Dic[checkNum[i], default: 0] = 0
}



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


for i in myNum{
    if binarySearch(arr: checkNum, l: 0, r: checknum - 1, target: i){
        Dic[i]! += 1
    }
}


var result = ""
for i in original{
    result += "\(Dic[i]!) "
}
print(result)
