//
//  2750_기수정렬.swift
//  정렬
//
//  Created by 김수경 on 2022/05/16.
//

import Foundation

var input = Int(readLine()!)!
var arr = [Int](repeating: 0, count: input)

for i in 0..<input{
    arr[i] = Int(readLine()!)!
}

func radixSort(arr: inout [Int]){
    var done = false
    var index: Int
    var digit = 1


    while !done {
        done = true
        var buckets: [[Int]] = [[Int]](repeating: [], count: 10)

        for num in arr{
            index = num / digit
            buckets[index % 10].append(num)
            //done은 루프를 돌 때 마다 true,
            //index > 0은 digit의 자릿수보다 num의 자릿수가 클 경우로
            //계속해서 비교할 수 있는 경우를 말함
            //done이 계속해서 true이고 index가 계속해서 0이하가 나오고 끝나는 경우에 종료
            if done && index > 0 {
                done = false
            }
        }

        //정렬된 buckets을 arr로 copy
        var i = 0
        for j in 0..<10{
            let bucket = buckets[j]
            for k in bucket{
                arr[i] = k
                i += 1
            }
        }

        //그 다음 자릿수
        digit *= 10

    }

}


radixSort(arr: &arr)
for i in 0..<input{
    print(arr[i])
}
