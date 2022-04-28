//
//  9020.swift
//  기본수학2
//
//  Created by 김수경 on 2022/04/15.
//

import Foundation

let T = Int(readLine()!)!
var a = 0; var b = 0
for _ in 0..<T{
    var num = Int(readLine()!)!
    a = num / 2
    b = num / 2

    while true{
        if isPrime(num: a) == true && isPrime(num: b) == true {
            print("\(a) \(b)")
            break
            
        }else{
            a -= 1
            b += 1
        }
            
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

