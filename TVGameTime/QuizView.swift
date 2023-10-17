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
    @State var questionCount = 0
    @State var isCorrect = false
    
    var body: some View {
        VStack {
            
           Text("\(questionViewModel.questions.count)")

//            ForEach(questionViewModel.questions[questionCount].answers, id: \.self) { answer in
//                Button {
//                   isCorrect = questionViewModel.questions[questionCount].checkAnswer(inputAnswer: answer)
//                    
//                    if isCorrect {
//                        questionViewModel.score += 1
//                        questionCount += 1
//                    } else {
//                        questionCount += 1
//                    }
//                    
//                } label: {
//                    Text(answer)
//                }
//
//            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            
           HStack{
                Button(action: {}, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
                     
            

        }
        .padding()
        .onAppear {
            Task {
                try await questionViewModel.fetchQuestions(category: childCategory)
            }
            questionViewModel.questions.shuffle()
//            questionViewModel.questions[questionCount].answers.shuffle()
        }
        
    }
        
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(category: .Geography, childCategory: "hi")
    }
}
