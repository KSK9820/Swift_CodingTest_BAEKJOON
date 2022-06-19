//
//  14425.swift
//  집합과맵
//
//  Created by 김수경 on 2022/06/16.
//

import Foundation
var input = readLine()!.split(separator: " ")

var N = Int(input[0])!
var M = Int(input[1])!
var Nset = Set<String>()
var Marr = [String]()
for _ in 0..<N{
    Nset.insert(readLine()!)
}
for _ in 0..<M{
    Marr.append(readLine()!)
}
var count = 0
for i in Marr{
    if Nset.contains(i){
        count += 1
    }
}
print(count)
