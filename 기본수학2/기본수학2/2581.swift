//
//  2581.swift
//  기본수학2
//
//  Created by 김수경 on 2022/04/15.
//

import Foundation
let start = Int(readLine()!)!
let end = Int(readLine()!)!
var prime = [Int]()
for i in start...end{
    if i != 1{
        if isPrime(num: i) == true{
            prime.append(i)
        }
    }
    
}

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
if prime.count == 0 {
    print("-1")
}else{
    print(prime.reduce(0, {$0 + $1}))
    print(prime[0])
}

