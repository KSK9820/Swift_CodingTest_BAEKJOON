//
//  2231.swift
//  브루트포스
//
//  Created by 김수경 on 2022/05/05.
//

import Foundation

let input = Int(readLine()!)!
var number = [Int](repeating: 0, count: String(input).count)
var constructor = 0
var arr = String(constructor).compactMap {Int(String($0))}
func find_constructor(){
    while constructor <= input{
        let sum: Int = arr.reduce(0, {
            (first: Int, second: Int) -> Int in
            return first + second
        })
        if input == sum + constructor{
            print(constructor)
            return
        }else{
            constructor += 1
            arr = String(constructor).compactMap {Int(String($0))}
        }
    }
    print("0")
    return
}

find_constructor()


