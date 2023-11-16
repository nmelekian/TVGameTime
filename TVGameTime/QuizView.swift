//
//  QuizView.swift
//  TVGameTime
//
//  Created by Nick Melekian on 9/21/23.
//

import SwiftUI

struct QuizView: View {
    @EnvironmentObject var questionViewModel: QuestionViewModel
    @State var category: Categories
    @State var childCategory: String
    @State var totalQuestions: Int = 0
    @State var isCorrect = false
    @State var questionIndex = 0
    
    var body: some View {
        VStack{
            if questionViewModel.questions.isEmpty  {
                //            LoadingView(category: category, childCategory: childCategory, totalQuestions: totalQuestions)
                Text("Getting Ready")
            }
            else {
                VStack {
                    
                    Text(questionIndex < 15 ? "\(questionViewModel.questions[questionIndex].question)" : "Empty")
                    
                    Text("\(questionViewModel.score)")
                    
                    
                    Button(action: {
                        checkAnswer(answer: questionViewModel.questions[questionIndex].options[0])
                    }, label: {
                        Text(questionIndex < 15 ? questionViewModel.questions[questionIndex].options[0] : "Empty")
                    })
                    
                    HStack{
                        Button(action: {
                            checkAnswer(answer: questionViewModel.questions[questionIndex].options[1])
                        }, label: {
                            Text(questionIndex < 15 ? questionViewModel.questions[questionIndex].options[1] :"Empty")
                        })
                        
                        Button(action: {
                            checkAnswer(answer: questionViewModel.questions[questionIndex].options[2])
                        }, label: {
                            Text(questionIndex < 15 ? questionViewModel.questions[questionIndex].options[2] : "Empty")
                        })
                    }
                    
                    Button(action: {
                        checkAnswer(answer: questionViewModel.questions[questionIndex].options[3])
                    }, label: {
                        Text(questionIndex < 15 ? questionViewModel.questions[questionIndex].options[3] : "Empty")
                    })
                    
                    
                    
                }
                .padding()
            }
            
            
        } .onAppear {
            Task {
                try await questionViewModel.fetchQuestions(category: childCategory, number: totalQuestions)
                questionViewModel.questions.shuffle()
                
                
            }
        }
        
        
        
    }
    
    func checkAnswer(answer: String) {
        
        if questionIndex <= 14 {
            if answer == questionViewModel.questions[questionIndex].correctAnswer {
                questionViewModel.score += 1
                questionIndex += 1
            } else {
                questionIndex += 1
            }
        } else {
            return
        }
        
    }
    
    
}

//struct QuizView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuizView(category: .Geography, childCategory: "hi", totalQuestions: 10)
//    }
//}
