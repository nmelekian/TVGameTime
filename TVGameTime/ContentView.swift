//
//  ContentView.swift
//  TVGameTime
//
//  Created by Nick Melekian on 9/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                CategoryView()
            } label: {
                Rectangle()
                    .frame(width: 150 , height: 150)
//                    .background(.red)
                    .overlay {
                        Text("Start")
                            .foregroundColor(.white)
                    }
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
