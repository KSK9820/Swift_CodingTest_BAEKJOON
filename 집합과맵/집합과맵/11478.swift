//
//  11478.swift
//  집합과맵
//
//  Created by 김수경 on 2022/06/19.
//

import Foundation


var string = Array(readLine()!)
var partSet = Set<String>()
var tmp = ""

for i in 0..<string.count{
    for j in i..<string.count{
        tmp += String(string[j])
        partSet.insert(tmp)
    }
    tmp = ""
}
print(partSet.count)
