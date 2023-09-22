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
