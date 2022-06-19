//
//  1269.swift
//  집합과맵
//
//  Created by 김수경 on 2022/06/19.
//

import Foundation

let input = readLine()!.split(separator: " ").map{(value) in Int(String(value))!}
let arrA = readLine()!.split(separator: " ")
let arrB = readLine()!.split(separator: " ")

var A = Set<String>()
var B = Set<String>()

for i in 0..<input[0]{
    A.insert(String(arrA[i]))
}
for j in 0..<input[1]{
    B.insert(String(arrB[j]))
}

var AtoB = A.subtracting(B)
var BtoA = B.subtracting(A)

print(AtoB.count + BtoA.count)


