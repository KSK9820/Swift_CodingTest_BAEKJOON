//
//  main.swift
//  2588
//
//  Created by 김수경 on 2022/02/10.
//

//import Foundation


let first = Int(readLine()!)!
let second = Int(readLine()!)!

let baek = second / 100
let sip = (second / 10) % 10
let il = second % 100 % 10

print(first * il)
print(first * sip)
print(first * baek)
print(first * second)

