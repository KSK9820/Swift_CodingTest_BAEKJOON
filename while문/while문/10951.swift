//
//  10951.swift
//  while문
//
//  Created by 김수경 on 2022/03/07.
//

import Foundation



while let input = readLine() {
    var line  = input.split(separator: " ")
    print(Int(line[0])! + Int(line[1])!)
}
