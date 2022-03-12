//
//  2525.swift
//  if문
//
//  Created by 김수경 on 2022/03/10.
//

import Foundation

var now = readLine()!.split(separator: " ").map({(value) in Int(value)})
var time = Int(readLine()!)!
var hour = time / 60
var minute = time % 60

now[0]! += hour
now[1]! += minute

if now[1]! > 60{
    now[0]! += now[1]! / 60
    now[1]! = now[1]! % 60
}else if now[1]! == 60{
    now[0]! += 1
    now[1]! = 0
}

if now[0]! >= 24{
    now[0]! -= 24
}



print("\(now[0]!) \(now[1]!)")

