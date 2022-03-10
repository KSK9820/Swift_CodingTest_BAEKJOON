//
//  10818.swift
//  1차원배열
//
//  Created by 김수경 on 2022/03/08.
//

let input = Int(readLine()!)!
var arr =  readLine()!.split(separator: " ").map({ (value) in Int(String(value))! })
print("\(arr.min()!) \(arr.max()!)")



