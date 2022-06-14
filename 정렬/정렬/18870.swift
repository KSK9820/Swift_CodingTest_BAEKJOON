//
//  18870.swift
//  정렬
//
//  Created by 김수경 on 2022/06/14.
//

import Foundation

let num = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map({(value) in Int(value)!})
var dic = [Int:Int]()
for i in input{
    dic[i] = 0
}

var sortdic = dic.sorted{$0.key < $1.key}
for i in 0..<sortdic.count{
    sortdic[i].value = i
}
for i in 0..<sortdic.count{
    dic.updateValue(sortdic[i].value, forKey: sortdic[i].key)
}
var result = ""
for i in input{
    result += "\(dic[i]!) "
}

print(result)
