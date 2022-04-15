//
//  10250.swift
//  기본수학1
//
//  Created by 김수경 on 2022/04/14.
//

import Foundation

var input = Int(readLine()!)!
for _ in 0..<input{
    var info = readLine()!.split(separator: " ").map({(value) in Int(String(value))!})
    room(H: info[0], W: info[1], N: info[2])
}


func room(H: Int, W: Int, N: Int) -> Bool{

    var floor = N % H
    
   
    var room = N / H + 1
    if room == 0 {
        room = H
        floor -= 1
    }
    
    if floor == 0 {
        floor = H
        room -= 1
    }
    
    print(floor * 100 + room)
    
    return true
}


