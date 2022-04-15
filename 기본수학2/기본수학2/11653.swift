//
//  11653.swift
//  기본수학2
//
//  Created by 김수경 on 2022/04/15.
//

import Foundation
var num = Int(readLine()!)!

while num != -1{
    isPrime(n: num)
}


func isPrime(n: Int) -> Int{
    for i in 2...Int((sqrt(Double(n))) + 1){
        if n % i == 0 {
            print(i)
            num = n / i
            
            return 0
        }
    }
    if num != 1{
        print(num)
    }
    
    num = -1
    return -1
    
}
