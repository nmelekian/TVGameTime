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
    var body: some View {
        VStack {
            
            
            // to make the buttons show the random answers, the array of answers needs to be shuffled before they are put into the selection choices, so that the answers and not in the same place every time
            Text(questionViewModel.questions[1].question)
                .font(.title)
            Button {
                
            } label: {
                Text(questionViewModel.questions[1].answers[0])
//                Image(systemName: "chevron.up")
//                    .imageScale(.large)
//                    .foregroundColor(.accentColor)
            }

            HStack {
                Button {
                    
                } label: {
//                    Image(systemName: "chevron.left")
//                        .imageScale(.large)
//                        .foregroundColor(.accentColor)
                    Text(questionViewModel.questions[1].answers[1])
                }.padding()
                
                Button {
                    
                } label: {
                    Text(questionViewModel.questions[1].answers[2])
//                    Image(systemName: "chevron.right")
//                        .imageScale(.large)
//                        .foregroundColor(.accentColor)
                }.padding()
            }
            
            Button {
                
            } label: {
                Text(questionViewModel.questions[1].answers[3])
//                Image(systemName: "chevron.down")
//                    .imageScale(.large)
//                    .foregroundColor(.accentColor)
            }
        }
        .padding()
        .onAppear {
            questionViewModel.questions.shuffle()
        }
        
    }
        
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(category: .math)
    }
}
