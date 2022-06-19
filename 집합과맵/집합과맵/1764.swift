//
//  1764.swift
//  집합과맵
//
//  Created by 김수경 on 2022/06/19.
//

import Foundation

let input = readLine()!.split(separator: " ").map{(value) in Int(String(value))!}
let N = input[0]
let M = input[1]
var noHear = Set<String>()
var noSee = Set<String>()

for i in 0..<N{
    noHear.insert(readLine()!)
}
for j in 0..<M{
    noSee.insert(readLine()!)
}

var both = noHear.intersection(noSee).sorted(by: <)
print(both.count)
print(both.joined(separator: "\n"))
