//
//  TVGameTimeApp.swift
//  TVGameTime
//
//  Created by Nick Melekian on 9/13/23.
//

import SwiftUI

@main
struct TVGameTimeApp: App {
    @StateObject var questionViewModel = QuestionViewModel()
    var body: some Scene {
        WindowGroup {
           ContentView()
                .environmentObject(questionViewModel)
        }
    }
}

