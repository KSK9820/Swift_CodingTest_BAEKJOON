//
//  10757.swift
//  기본수학1
//
//  Created by 김수경 on 2022/04/15.
//

import Foundation
var input = readLine()!.split(separator: " ")
var num1 = input[0].map({(value) in Int(String(value))!})
var num2 = input[1].map({(value) in
    Int(String(value))!})


if num1.count > num2.count{
    for i in 0..<num1.count - num2.count{
        num2.insert(0, at: i)
    }
}else if num1.count < num2.count{
    for i in 0..<num2.count - num1.count{
        num1.insert(0, at: i)
    }
}

var sum = [Int](repeating: 0, count: num1.count)

for i in (1..<num1.count).reversed(){
    if num1[i] + num2[i] > 9{
        sum[i] = num1[i] + num2[i] - 10
        num1[i - 1] += 1
    }else{
        sum[i] += num1[i] + num2[i]
    }
}
sum[0] += num1[0] + num2[0]
for i in 0..<sum.count{
    print(sum[i], separator: "", terminator: "")
}


