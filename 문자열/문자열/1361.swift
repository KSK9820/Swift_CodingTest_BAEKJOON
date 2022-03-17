//
//  1361.swift
//  문자열
//
//  Created by 김수경 on 2022/03/14.
//

import Foundation
struct order{
    var start: Int
    var end: Int
}


var num = Int(readLine()!)!
var count = 0

for i in 0..<num{
    var line = readLine()!
    groupWord(s: line)
}

func groupWord(s: String) -> Bool{
    var arr = Array(s)
    var set = Set(arr)
    var comp = [order]()
    for j in set{
        comp.append(order(start: arr.firstIndex(of: j)!, end: arr.lastIndex(of: j)!))
    }
    comp = comp.sorted(by: {$0.start
        < $1.start})
    
    for k in 0..<set.count - 1{
        if comp[k].end > comp[k + 1].start{
            return false
        }
    }
    count += 1
    return true
}

print(count)

