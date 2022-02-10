//
//  14681.swift
//  if문
//
//  Created by 김수경 on 2022/02/10.
//

import Foundation

let x = Int(readLine()!)!
let y = Int(readLine()!)!

if x>0 && y>0 {
    print(1)
}else if x<0 && y>0{
    print(2)
}else if x<0 && y<0{
    print(3)
}else if x>0 && y<0{
    print(4)
}
