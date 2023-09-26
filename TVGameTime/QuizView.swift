//
//  QuizView.swift
//  TVGameTime
//
//  Created by Nick Melekian on 9/21/23.
//

import SwiftUI

struct QuizView: View {
    @EnvironmentObject var questionViewModel: QuestionViewModel
    @State var category: Category
    @State var questionCount = 0
    @State var isCorrect = false
    
    var body: some View {
        VStack {
            
            Text(questionViewModel.questions[questionCount].question)

            ForEach(questionViewModel.questions[questionCount].answers, id: \.self) { answer in
                Button {
                   isCorrect = questionViewModel.questions[questionCount].checkAnswer(inputAnswer: answer)
                    
                    if isCorrect {
                        questionViewModel.score += 1
                        questionCount += 1
                    } else {
                        questionCount += 1
                    }
                    
                } label: {
                    Text(answer)
                }

            }
            
            
                     
            

        }
        .padding()
        .onAppear {
            questionViewModel.questions.shuffle()
            questionViewModel.questions[questionCount].answers.shuffle()
        }
        
    }
        
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(category: .math)
    }
}
