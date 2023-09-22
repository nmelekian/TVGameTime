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
    var body: some View {
        VStack {
            
            Text(questionViewModel.questions[questionCount].question)

            ForEach(questionViewModel.questions[questionCount].answers, id: \.self) { answer in
                Button {

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
