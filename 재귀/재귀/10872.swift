//
//  10872.swift
//  재귀
//
//  Created by 김수경 on 2022/05/03.
//

import Foundation

let input = Int(readLine()!)!

func factorial(num: Int) -> Int{
    if num == 0{
        return 1
    }else{
        return num * factorial(num: num - 1)
    }
}
print(factorial(num: input))



