//
//  2884.swift
//  if문
//
//  Created by 김수경 on 2022/02/10.
//

import Foundation
let time = readLine()!.split(separator: " ")
let h = Int(time[0])!
let m = Int(time[1])!

if h != 0{
    if m<45{
        print("\(h - 1) \(60 - 45 + m)")
    }else{
        print("\(h) \(m - 45)")
    }
}else {
    if m<45{
        print("23 \(15 + m)")
    }else {
        print("0 \(m - 45)")
    }
}
