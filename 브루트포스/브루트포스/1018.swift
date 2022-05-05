//
//  1018.swift
//  브루트포스
//
//  Created by 김수경 on 2022/05/05.
//

import Foundation
let input = readLine()!.split(separator: " ").map({(value) in Int(String(value))!})
var arr = [[String]](repeating: [String](repeating: "0", count: input[1]), count: input[0])
for i in 0..<input[0]{
    arr[i] = readLine()!.compactMap({(value) in String(value)})
}

//B로 시작
var startB = [Int]()
var startW = [Int]()


for i in 0..<input[1] - 7{
    for j in 0..<input[0] - 7{
        startB.append(whichFirst(start1: j, end1: j + 8, start2: i, end2: i + 8, first: "B", second: "W"))
        startW.append(whichFirst(start1: j, end1: j + 8, start2: i, end2: i + 8, first: "W", second: "B"))
    }
}
print(min(startB.min()!, startW.min()!))




func whichFirst(start1: Int, end1: Int, start2: Int, end2:Int, first: String, second: String) -> Int{
    var count = 0
    for i in start1..<end1{
        if i % 2 == 1{
            for j in start2..<end2{
                if arr[i][j] != first && j % 2 == 0{
                    count += 1
                    
                }else if arr[i][j] != second && j % 2 == 1{
                    count += 1
                }
            }
        }else{
            for j in start2..<end2{
                if arr[i][j] != second && j % 2 == 0{
                    count += 1
                }else if arr[i][j] != first && j % 2 == 1 {
                    count += 1
                }
            }
        }
    }
    return count
}



