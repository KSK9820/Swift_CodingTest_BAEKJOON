//
//  1620.swift
//  집합과맵
//
//  Created by 김수경 on 2022/06/16.
//

import Foundation

let input = readLine()!.split(separator: " ").map{(value) in Int(String(value))!}
var pocketmon = [String: Int]()
for i in 0..<input[0]{
    pocketmon[readLine()!] = i + 1
  
}
var reverse = [String: String]()
for j in pocketmon{
    reverse[String(j.value)] = j.key
}

var ask = [Any]()
for i in 0..<input[1]{
    ask.append(readLine()!)
}

for i in ask{
    //이름
    if pocketmon.index(forKey: i as! String) != nil{
        print(pocketmon[pocketmon.index(forKey: i as! String)!].value)
    }
    //번호
    else if reverse.index(forKey: i as! String) != nil{
        print(reverse[reverse.index(forKey: i as! String)!].value)
    }
}
