//
//  CategoryView.swift
//  TVGameTime
//
//  Created by Nick Melekian on 9/21/23.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        NavigationStack{
            NavigationLink {
                QuizView()
            } label: {
                Text("Lol")
            }

        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
