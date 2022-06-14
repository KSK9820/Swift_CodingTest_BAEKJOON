//
//  1181.swift
//  정렬
//
//  Created by 김수경 on 2022/06/14.
//

import Foundation

let times = Int(readLine()!)!
var dictionary = [String:Int]()
for i in 0..<times{
    var input = readLine()!
    dictionary[input] = input.count
}

//abc 정렬 먼저
let abc = dictionary.sorted {$0.key < $1.key}
let length = abc.sorted {$0.value < $1.value}

for i in length{
    print(i.key)
}

