//
//  2775.swift
//  기본수학1
//
//  Created by 김수경 on 2022/04/14.
//

import Foundation

let input = Int(readLine()!)!

for i in 0..<input {
    let floor = Int(readLine()!)!
    let room = Int(readLine()!)!
    print(howmany(f: floor, r: room))
    
}


func howmany(f: Int, r: Int) -> Int {
    if r == 1{
        return 1
    }
    if f == 0 {
        return r
    }
    return howmany(f: f - 1, r: r) + howmany(f: f, r: r - 1)
}
