//
//  QuestionModel.swift
//  TVGameTime
//
//  Created by Nick Melekian on 9/13/23.
//

import Foundation

struct Question: Identifiable, Hashable {
    var id = UUID()
    var category: Category
    var question: String
    var correctAnswer: String
    var answers: [String]
    
    mutating func shuffle() {
        answers = answers.shuffled()
    }
    
    func checkAnswer(inputAnswer: String) -> Bool {
        if inputAnswer == correctAnswer {
            return true
        }
        
        return false
    }
    
}
