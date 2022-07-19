//
//  2477.swift
//  기하1
//
//  Created by 김수경 on 2022/07/17.
//

import Foundation

let num = Int(readLine()!)!
var LV = 0; var LH = 0
var VIdx = 0; var HIdx = 0

var input = [[Int]]()
for i in 0...5{
    var tmp = readLine()!.split(separator: " ").map{Int($0)!}
    
    switch tmp[0]{
    case 1, 2:
        if tmp[1] > LH{
            LH = tmp[1]
            HIdx = i
        }
    case 3, 4:
        if tmp[1] > LV{
            LV = tmp[1]
            VIdx = i
        }
    default:
        break
    }
    input.append(tmp)
}

let L = LV * LH
if VIdx == 0{ VIdx = 6 }
if HIdx == 0 { HIdx = 6}

var S1 = abs(input[(VIdx - 1) % 6][1] - input[(VIdx + 1) % 6][1])
var S2 = abs(input[(HIdx - 1) % 6][1] - input[(HIdx + 1) % 6][1])
let S = S1 * S2

print((L - S) * num)
     

