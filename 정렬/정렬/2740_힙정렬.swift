//
//  2750_힙정렬.swift
//  정렬
//
//  Created by 김수경 on 2022/05/16.
//

import Foundation

func buildHeap<T: Comparable>(a: inout [T], n: Int){
    var i = n / 2
    while i >= 0 {
        heapify(a: &a, k: i, n: input)
        i -= 1
    }
}

//최소힙정렬
func heapify<T: Comparable>(a: inout [T], k: Int, n: Int){

    let left = 2 * k + 1
    let right = 2 * k + 2
    var smaller: Int!
    
    //k가 두 자식을 가지는 경우
    if right < n {
        if a[left] < a[right]{
            smaller = left
        }else{
            smaller = right
        }
        
    }
    //k가 왼쪽 자식만 가지는 경우
    else if left < n {
        smaller = left
    }
    //k가 리프노드인 경우
    else{
        smaller = nil
        return
    }
    
    //최소힙
    //부모노드보다 자식노드가 더 작은 경우 swap
    //swap한 후 자식노드의 자식노드도 확인해야하기 때문에 heapify
    
    if smaller != nil && a[smaller] < a[k]{
        a.swapAt(smaller, k)
        heapify(a: &a, k: smaller, n: n)
    }
}


func heapSort<T: Comparable>(a: inout [T], n: Int){

    buildHeap(a: &a, n: n)
    
    //하나 남을 때 까지
    for j in (1..<n).reversed(){
        //마지막 리프노드와 루트 노드 교환
        a.swapAt(j, 0)
        heapify(a: &a, k: 0, n: j)
    }
}


var input = Int(readLine()!)!
var arr = [Int](repeating: 0, count: input)

for i in 0..<input{
    arr[i] = Int(readLine()!)!
}

heapSort(a: &arr, n: input)
for i in (0..<input).reversed(){
    print(arr[i])
}


