//
//  11729.swift
//  재귀
//
//  Created by 김수경 on 2022/04/28.
//

import Foundation

let input = Int(readLine()!)!
print(pow(2, input) - 1)
Hanoi(n: input, start: 1, mid: 2, end: 3)

func Hanoi(n: Int, start: Int, mid: Int, end: Int){
    if n == 1 {
        print("\(start) \(end)")
        return
    }
    Hanoi(n: n - 1, start: start, mid: end, end: mid)
    Hanoi(n: 1, start: start, mid: mid, end: end)
    Hanoi(n: n - 1, start: mid, mid: start, end: end)
}
