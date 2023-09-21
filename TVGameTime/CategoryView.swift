//
//  CategoryView.swift
//  TVGameTime
//
//  Created by Nick Melekian on 9/21/23.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        VStack{
            NavigationLink {
                QuizView(category: Category.entertainment)
            } label: {
                Text("Entertainment")
            }
            
            NavigationLink {
                QuizView(category: Category.history)
            } label: {
                Text("History")
            }
            
            NavigationLink {
                QuizView(category: Category.math)
            } label: {
                Text("Math")
            }
            
            NavigationLink {
                QuizView(category: Category.science)
            } label: {
                Text("Science")
            }
            
            NavigationLink {
                QuizView(category: Category.geography)
            } label: {
                Text("Geography")
            }
            
            
            
            
            
            
        }
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
