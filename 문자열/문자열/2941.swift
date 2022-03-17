//
//  2941.swift
//  문자열
//
//  Created by 김수경 on 2022/03/14.
//

import Foundation

var count = 0
var line = readLine()!

if line.contains("c="){
    line = line.replacingOccurrences(of: "c=", with: "0")
    count += 1
}
if line.contains("c-"){
    line = line.replacingOccurrences(of: "c-", with: "0")
}
if line.contains("dz="){
    line = line.replacingOccurrences(of: "dz=", with: "0")
}
if line.contains("d-"){
    line = line.replacingOccurrences(of: "d-", with: "0")
}
if line.contains("lj"){
    line = line.replacingOccurrences(of: "lj", with: "0")
}
if line.contains("nj"){
    line = line.replacingOccurrences(of: "nj", with: "0")
}
if line.contains("s="){
    line = line.replacingOccurrences(of: "s=", with: "0")
}
if line.contains("z="){
    line = line.replacingOccurrences(of: "z=", with: "0")
}

print(Array(line).count)
