//
//  1065.swift
//  함수
//
//  Created by 김수경 on 2022/03/11.
//

import Foundation

var input = Int(readLine()!)!
var count = 0

var arr: [Int]!

func makeArr(num: Int){
    var n = num
    arr = [Int](repeating: 0, count: String(n).count)
    while n > 0 {
        arr[String(n).count - 1] = n % 10
        n /= 10
    }
    diff(arr: arr)
}

func diff(arr: [Int]) -> Bool{
    var firstDif = arr[0] - arr[1]
    var secondDif = 0
    if arr.count > 2 {
        for i in 1..<arr.count - 1{
            secondDif = arr[i] - arr[i+1]
            if secondDif == firstDif{
                continue
            }else{
                return false
            }
        }
        count += 1
        return true
    }else{
        count += 1
        return true
    }
}

if input >= 10 {
    for i in 10...input{
        makeArr(num: i)
    }
    print(count + 9)
}else{
    count = input
    print(count)
}



