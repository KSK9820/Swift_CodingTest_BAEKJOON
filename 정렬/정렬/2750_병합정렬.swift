//
//  2750_병합정렬.swift
//  정렬
//
//  Created by 김수경 on 2022/05/12.
//

import Foundation

var input = Int(readLine()!)!
var arr = [Int](repeating: 0, count: input)

for i in 0..<input{
    arr[i] = Int(readLine()!)!
}

func divide(a: [Int]) -> [Int]{
    if a.count <= 1 {return a}
    let mid = a.count / 2
    let left = Array(a[0..<mid])    //Array()를 하지 않으면 ArraySlice<Int>이기 때문
    let right = Array(a[mid..<a.count])
    return mergeSort(left: divide(a: left), right: divide(a: right))
}

func mergeSort(left: [Int], right: [Int]) -> [Int]{
    var result: [Int] = []
    var l = left
    var r = right
    
    while !l.isEmpty && !r.isEmpty{
        if l.first! > r.first! {
            result.append(r.removeFirst())
            
        }else{
            result.append(l.removeFirst())
        }
    }
    
    //left와 right중 하나라도 empty가 되면
    if !l.isEmpty{
        result.append(contentsOf: l)
    }
    if !r.isEmpty{
        result.append(contentsOf: r)
    }
    return result
}


let result = divide(a: arr)
for i in 0..<input{
    print(result[i])
}



