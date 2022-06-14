//
//  1427.swift
//  정렬
//
//  Created by 김수경 on 2022/06/02.
//

import Foundation

var num: String = readLine()!
var arr = [Character]()
for index in 0..<num.count{
    var temp = num[num.index(num.startIndex, offsetBy: index)]
    arr.append(temp)
}

var sorted = arr.map({(value: Character) -> Int in
    return Int(String(value))!
})




sorted = sorted.sorted(by: >)
for i in sorted{
    print(i, separator: ",", terminator: "")
}

