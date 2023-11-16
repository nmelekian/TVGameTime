//
//  QuestionViewModel.swift
//  TVGameTime
//
//  Created by Nick Melekian on 9/21/23.
//

import Foundation

@MainActor
class QuestionViewModel: ObservableObject {
//    @Published var questions: [Question] = [Question(category: .history, question: "What is the name of the first president", correctAnswer: "George Washington", answers: ["Abraham Lincoln", "Herbert Hoover", "George Washington", "Milard Filmore"]), Question(category: .math, question: "What is 2 + 2?", correctAnswer: "4", answers: ["4", "1", "3", "2"])]
    
    @Published var questions: [Question] = [] {
        didSet {
            print(questions)
        }
    }
    @Published var score = 0
    
    let service: QuestionAPI
    
    @Published var isLoading: Bool = false
    @Published var errorText: String = ""
    
    init(service: QuestionAPI = QuestionAPIImpl()) {
        self.service = service
    }
    
    
    func fetchQuestions(category: String, number: Int) async throws {
        self.isLoading = true
        do {
            let data = try await service.fetchQuestion(category: category, qNumber: number)
                
            self.questions = data
            self.isLoading = false
        } catch {
            errorText = error.localizedDescription
        }
    }
    
}
