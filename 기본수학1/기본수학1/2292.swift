//
//  2292.swift
//  기본수학1
//
//  Created by 김수경 on 2022/03/21.
//

import Foundation
let input = Int(readLine()!)!
var num = 1
var x = 0

while input > num {
    x += 1
    num += 6 * x
}
print(x + 1)
