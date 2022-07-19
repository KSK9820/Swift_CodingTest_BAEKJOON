//
//  1358.swift
//  기하1
//
//  Created by 김수경 on 2022/07/19.
//

import Foundation
let input = readLine()!.split(separator: " ").map{Int($0)!}
let width = input[0]
let height = input[1]
let c1  = (x: input[2], y: input[3] + height / 2)
let c2 = (x: c1.x + width, y: c1.y)
let p = input[4]
var cnt = 0

for i in 0..<p{
    let tmp = readLine()!.split(separator: " ").map{Int($0)!}
    let x1 = tmp[0]
    let y1 = tmp[1]
    
    let d1 = getDistance(x1: c1.x, y1: c1.y, x2: x1, y2: y1, r: height / 2)
    let d2  = getDistance(x1: c2.x, y1: c2.y, x2: x1, y2: y1, r: height / 2)
    let d3 = getRectangle(x: x1, y: y1)
    
    if d1 || d2 || d3{
        cnt += 1
    }
}
print(cnt)

func getDistance(x1: Int, y1: Int, x2: Int, y2: Int, r: Int) -> Bool{
    let distance = pow(Double(x1 - x2), 2) + pow(Double(y1 - y2), 2)
    if distance <= pow(Double(r), 2){
        return true
    }else{
        return false
    }
}

func getRectangle(x: Int, y: Int) -> Bool{
    let rectangle = (x: input[2], y: input[3])
    if x >= rectangle.x && x <= rectangle.x + width && y >= rectangle.y && y <= rectangle.y + height{
        return true
    }else {
        return false
    }
}
