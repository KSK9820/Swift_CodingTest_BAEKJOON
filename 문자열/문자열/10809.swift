//
//  10809.swift
//  문자열
//
//  Created by 김수경 on 2022/03/14.
//

import Foundation

var alphabet = [Int](repeating: -1, count: 26)

var word = Array(readLine()!)
for i in 0..<word.count{
    var num = Int(Character(extendedGraphemeClusterLiteral: word[i]).asciiValue!) - 97
    if alphabet[num] == -1 {
        alphabet[num] = i
    }
}

//var result = ""
//for i in 0..<alphabet.count{
//    result += "\(alphabet[i]) "
//}
//print(result)
//

alphabet.forEach{
    print($0, terminator: " ")
}
