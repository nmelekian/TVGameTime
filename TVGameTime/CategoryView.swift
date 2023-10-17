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
            List {
                ForEach(Categories.allCases, id: \.self) { category in
                    NavigationLink {
                        QuizView(category: category, childCategory: category.getChild())
                    } label: {
                        Text(category.rawValue)
                    }
                    
                }
            }
            
            
            
            
            
            
            
            
        }
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
