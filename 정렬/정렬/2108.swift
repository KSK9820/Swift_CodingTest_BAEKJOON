//
//  2108.swift
//  정렬
//
//  Created by 김수경 on 2022/05/25.
//

import Foundation
//
//final class FileIO {
//    private let buffer:[UInt8]
//    private var index: Int = 0
//
//    init(fileHandle: FileHandle = FileHandle.standardInput) {
//
//        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
//    }
//
//    @inline(__always) private func read() -> UInt8 {
//        defer { index += 1 }
//
//        return buffer[index]
//    }
//
//    @inline(__always) func readInt() -> Int {
//        var sum = 0
//        var now = read()
//        var isPositive = true
//
//        while now == 10
//                || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
//        while now >= 48, now <= 57 {
//            sum = sum * 10 + Int(now-48)
//            now = read()
//        }
//
//        return sum * (isPositive ? 1:-1)
//    }
//
//    @inline(__always) func readString() -> String {
//        var now = read()
//
//        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        let beginIndex = index-1
//
//        while now != 10,
//              now != 32,
//              now != 0 { now = read() }
//
//        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
//    }
//
//    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
//        var now = read()
//
//        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        let beginIndex = index-1
//
//        while now != 10,
//              now != 32,
//              now != 0 { now = read() }
//
//        return Array(buffer[beginIndex..<(index-1)])
//    }
//}

//let file = FileIO()
//let input = file.readInt()
let input = Int(readLine()!)!
var arr = [Int](repeating: 0, count: input)
var dict = [Int: Int]()
for i in 0..<input{
    arr[i] = Int(readLine()!)!
    dict[arr[i], default: 0] += 1
}


//평균
let avg = arr.reduce(0, {
    (first: Int, second: Int) -> Int in
    return first + second
})
print(Int(round(Double(avg) / Double(input))))


//중앙값
arr = arr.sorted()
print(arr[input/2])


//최빈값
let max = dict.max(by: {$0.value < $1.value})!.value
var mode = dict.filter {$0.value == max}.keys.sorted()
if mode.count > 1{
    print(mode[1])
}else{
    print(mode[0])
}

//범위
print(arr[input-1] - arr[0])
