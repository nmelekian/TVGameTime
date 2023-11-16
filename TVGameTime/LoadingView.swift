//
//  LoadingView.swift
//  TVGameTime
//
//  Created by Nick Melekian on 11/7/23.
//

import SwiftUI

struct LoadingView: View {
    @EnvironmentObject var questionViewModel: QuestionViewModel
    @State var category: Categories
    @State var childCategory: String
    @State var totalQuestions: Int
    var body: some View {
       VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
       .onAppear {
           Task {
               try await questionViewModel.fetchQuestions(category: childCategory, number: totalQuestions)
               questionViewModel.questions.shuffle()


           }
       }
    }
}

//#Preview {
//    LoadingView()
//}
