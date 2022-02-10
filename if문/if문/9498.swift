//
//  9498.swift
//  if문
//
//  Created by 김수경 on 2022/02/10.
//

import Foundation

var number = readLine()!
let line = Int(number)!
if line >= 90{
    print("A")
}else if line >= 80{
    print("B")
}else if line >= 70{
    print("C")
}else if line >= 60{
    print("D")
}else{
    print("F")
}
