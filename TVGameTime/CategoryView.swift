//
//  CategoryView.swift
//  TVGameTime
//
//  Created by Nick Melekian on 9/21/23.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var questionViewModel: QuestionViewModel
    @State var category: Categories = .Science
    @State var childCategory: String = ""
    @State var totalQuestions: Int = 0
    @State var questionCount = 0
    @State var isCorrect = false
    @State var questionIndex = 0
    
    var body: some View {
        VStack{
            List {
                ForEach(Categories.allCases, id: \.self) { category in
                    NavigationLink {
                        QuizView(category: category, childCategory: category.getChild(), totalQuestions: 15)
                    } label: {
                        Text(category.rawValue)
                    }
                    
                }
            }
            
            
            
            
            
            
            
            
        }
        
    }
}

//struct CategoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryView()
//    }
//}
