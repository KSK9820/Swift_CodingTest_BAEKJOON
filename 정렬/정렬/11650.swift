//
//  11650.swift
//  정렬
//
//  Created by 김수경 on 2022/06/14.
//

import Foundation

let times = Int(readLine()!)!
var map = [(Int, Int)](repeating: (0,0), count: times)

for i in 0..<times{
    var num = readLine()!.split(separator: " ").map({(value) in Int(value)! })
    map[i].0 = num[0]
    map[i].1 = num[1]
}

let y =  map.sorted {$0.1 < $1.1}
let x = y.sorted {$0.0 < $1.0}

for i in x {
    print("\(i.0) \(i.1)")
}
