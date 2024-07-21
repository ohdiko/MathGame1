//
//  ContentView.swift
//  Counter
//
//  Created by ohm konkani on 2024-07-19.
//

import SwiftUI

struct ContentView: View {
    @State private var corectAnswer = 0
    @State private var choiceAnswer : [Int] = [0, 1, 2, 3]
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    @State private var difficulty = 100
    @State private var score = 0
    
    var body: some View {
        
        
        VStack {
            Text("\(firstNumber) + \(secondNumber)")
                .font(.system(size: 43, weight: .bold))
            HStack{
                ForEach(0..<2) { index in
                    Button {
                        answerIsCorrect(answer: choiceAnswer[index])
                        geneateAnswer()
                    }label: {
                        AnswerButton(number: choiceAnswer[index])
                        
                    }
                }
            }
            HStack{
                ForEach(2..<4) { index in
                    Button {
                        answerIsCorrect(answer: choiceAnswer[index])
                        geneateAnswer()
                    }label: {
                        AnswerButton(number: choiceAnswer[index])
                        
                    }
                }
            }
            Text("Score: \(score)")
                .font(.system(size: 43, weight: .bold))
        }
        .padding()
        .onAppear(perform: geneateAnswer)
    }
    func answerIsCorrect(answer: Int) {
        let isCorrect = answer == corectAnswer ? true : false
        
        if isCorrect {
            self.score += 1
        }else{
            self.score -= 1
        }
    }
    func geneateAnswer(){
        firstNumber = Int.random(in: 0...(difficulty/2))
        secondNumber = Int.random(in: 0...(difficulty/2))
        var answerList = [Int]()
        
        corectAnswer = firstNumber + secondNumber
        
        for i in 0...2 {
            answerList.append(Int.random(in: 0...difficulty))
        }
        
        answerList.append(corectAnswer)
        
        choiceAnswer = answerList.shuffled()
    }
}
#Preview {
    ContentView()
}

