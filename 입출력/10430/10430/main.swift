//
//  main.swift
//  10430
//
//  Created by 김수경 on 2022/02/10.
//

//import Foundation
//
//print("Hello, World!")

var line = readLine()!.split(separator: " ")
let A = Int(line[0])!
let B = Int(line[1])!
let C = Int(line[2])!

print((A+B)%C)
print(((A%C) + (B%C))%C)
print((A*B)%C)
print(((A%C) * (B%C))%C)
