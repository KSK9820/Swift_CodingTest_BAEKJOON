//
//  17478.swift
//  재귀
//
//  Created by 김수경 on 2022/05/03.
//
import Foundation

var input = Int(readLine()!)!
var under_bar = "____"


let question1 = """
"재귀함수가 뭔가요?"
"""
let answer1 = """
"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.
"""
let answer2 = "마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지."

let answer3 = """
그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어."
"""
let answer4 = """
"재귀함수는 자기 자신을 호출하는 함수라네"
"""
let answer5 = "라고 답변하였지."

//var sentence = ""

func print_underbar(times: Int) -> String{
    var sentence = ""
    for _ in 0..<(times){
        sentence.write(under_bar)
    }
    
    return sentence
}

func joongang(times: Int){
    if times == input + 1{
    return
}
    
    ask(sentence: print_underbar(times: times))
    
    if times == input{
        print(print_underbar(times: times) + answer4)
    }else{
        answer(sentence: print_underbar(times: times))
    }
    joongang(times: times + 1)
    real_answer(sentence: print_underbar(times: times))
}

func ask(sentence: String){
    print(sentence + question1)
}

func answer(sentence: String){
    print(sentence + answer1)
    print(sentence + answer2)
    print(sentence + answer3)
}

func real_answer(sentence: String){
    
    print(sentence + answer5)
}

print("어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.")

    joongang(times: 0)


