//
//  10814.swift
//  정렬
//
//  Created by 김수경 on 2022/05/17.
//

import Foundation

let input = Int(readLine()!)!
var age = [Int](repeating: 0, count: input)
var name = [String](repeating: "", count: input)
for i in 0..<input{
    let info = readLine()!.split(separator: " ")
    age[i] = Int(info[0])!
    name[i] = String(info[1])
}


func radixSort(arr: inout [Int], name: inout [String]){
    var done = false
    var index: Int
    var digit = 1


    while !done {
        done = true
        var buckets: [[Int]] = [[Int]](repeating: [], count: 10)
        var buckets_name: [[String]] = [[String]](repeating: [], count: 10)
        for num in 0..<arr.count{
            index = arr[num] / digit
            buckets[index % 10].append(arr[num])
            buckets_name[index % 10].append(name[num])
            if done && index > 0 {
                done = false
            }
        }

        var i = 0
        for j in 0..<10{
            let bucket = buckets[j]
            let bucket_name = buckets_name[j]
            for k in 0..<bucket.count{
                arr[i] = bucket[k]
                name[i] = bucket_name[k]
                i += 1
            }
        }
        digit *= 10
    }
}


radixSort(arr: &age, name: &name)
for i in 0..<input{
    print("\(age[i]) \(name[i])")
}
