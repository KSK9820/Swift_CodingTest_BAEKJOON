//
//  2562.swift
//  1차원배열
//
//  Created by 김수경 on 2022/03/08.
//

import Foundation

var arr:[Int] = []

for _ in 0..<9{
    arr.append(Int(readLine()!)!)
}
print(arr.max()!)
print(arr.index(of: arr.max()!)! + 1)

