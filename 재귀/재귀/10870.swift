//
//  10870.swift
//  재귀
//
//  Created by 김수경 on 2022/05/03.
//

import Foundation

let input = Int(readLine()!)!
var star: [[Int]] = Array(repeating: Array(repeating: 1, count: input), count: input)



for i in 0..<input{
    for j in 0..<input{
        makeStar(num: input / 3, i: i, j: j)
    }
}

printStar(star: star)

func printStar(star: [[Int]]){
    for i in 0..<input{
        var result = ""
        for j in 0..<input{
            if star[i][j] == 1{
                result.write("*")
            }else{
                result.write(" ")
            }
        }
        print(result)
    }
}

func makeStar(num: Int, i: Int, j: Int) -> Int{
    if num == 0{
        return 0
    }
    
    if (i / num) % 3 == 1 && (j / num) % 3 == 1{
        star[i][j] = 0
    }else{
        makeStar(num: num / 3, i: i, j: j)
    }
    
   return 0
}

