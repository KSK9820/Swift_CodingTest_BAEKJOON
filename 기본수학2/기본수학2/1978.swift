//
//  1978.swift
//  기본수학2
//
//  Created by 김수경 on 2022/04/15.
//

import Foundation

let input = Int(readLine()!)!
let num = readLine()!.split(separator: " ").map({(value) in Int(String(value))!})
var count = 0
for i in 0..<input{
    if num[i] != 1{
        if isPrime(num: num[i]) == true {
            count += 1
        }
    }
}
print(count)

func isPrime(num: Int) -> Bool{
    for i in 2...Int((sqrt(Double(num))) + 1){
        if num == 2 {
            return true
        }
        else if num % i == 0 {
            return false
        }
    }
    return true
}
