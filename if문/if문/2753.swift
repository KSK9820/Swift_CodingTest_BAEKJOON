//
//  2753.swift
//  if문
//
//  Created by 김수경 on 2022/02/10.
//

import Foundation

let line = Int(readLine()!)!

if (line % 4 == 0 && line % 100 != 0) || line % 400 == 0{
    print(1)
}else {
    print(0)
}
