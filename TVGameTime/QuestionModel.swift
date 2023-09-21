//
//  QuestionModel.swift
//  TVGameTime
//
//  Created by Nick Melekian on 9/13/23.
//

import Foundation

struct Question: Identifiable {
    var id = UUID()
    var category: Category
    var question: String
    var correctAnswer: String
    var answers: [String]
    
    mutating func shuffle() {
        answers = answers.shuffled()
    }
    
}
