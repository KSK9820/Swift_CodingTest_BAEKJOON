//
//  4673.swift
//  함수
//
//  Created by 김수경 on 2022/03/11.
//

import Foundation
var arr = [Int](repeating: 0, count: 12000)

func selfnum(num: Int){
    var plusnum: Int!
    
    
    switch String(num).count{
    case 1:
        plusnum = num + num
        arr[plusnum] = 1
    case 2:
        plusnum = num + num / 10 + num % 10
        arr[plusnum] = 1
    case 3:
        plusnum = num + num % 10 + (num / 10) % 10 + num / 100
        arr[plusnum] = 1
    case 4:
        plusnum = num + num % 10 + (num / 10) % 10 + (num / 100) % 10 + num / 1000
        arr[plusnum] = 1
    default:
        break
    }
    

}

for i in 1..<10001{
    selfnum(num: i)
}
for i in 1..<10001{
    if arr[i] == 0{
        print(i)
    }
}

