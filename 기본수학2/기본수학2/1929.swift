//
//  1929.swift
//  기본수학2
//
//  Created by 김수경 on 2022/04/15.
//

import Foundation

let num = readLine()!.split(separator: " ").map({(value) in Int(String(value))!})

for i in num[0]...num[1]{
    if isPrime(n: i) == true{
        print(i)
    }
}

func isPrime(n: Int) -> Bool{
    for i in 2...Int((sqrt(Double(n))) + 1){
        if n == 2 {
            return true
        }else if n == 1{
            return false
        }
        else if n % i == 0 {
            return false
        }
    }
    return true

}

