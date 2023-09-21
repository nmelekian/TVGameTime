//
//  QuestionViewModel.swift
//  TVGameTime
//
//  Created by Nick Melekian on 9/21/23.
//

import Foundation


class QuestionViewModel: ObservableObject {
    @Published var questions: [Question] = [Question(category: .history, question: "What is the name of the first president", correctAnswer: "George Washington", answers: ["Abraham Lincoln", "Herbert Hoover", "George Washington", "Milard Filmore"]), Question(category: .math, question: "What is 2 + 2?", correctAnswer: "4", answers: ["4", "1", "3", "2"])]
}
