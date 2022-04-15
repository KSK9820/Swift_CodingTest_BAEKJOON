//
//  4948.swift
//  기본수학2
//
//  Created by 김수경 on 2022/04/15.
//

import Foundation



while true{
    let n = Int(readLine()!)!
    var count = 0
    if n == 0{
        break
    }
    
    for i in (n + 1)...(2 * n){
        if isPrime(num: i) == true{
            count += 1
        }
    }
    if count != 0 {
        print(count)
    }
    
    
}


func isPrime(num: Int) -> Bool{
    
    for i in 2...Int(sqrt(Double(num))) + 1{
        if num == 2{
            return true
        }else if num == 1 {
            return false
        }else if num % i == 0{
            return false
        }
    }
    
    return true
}
