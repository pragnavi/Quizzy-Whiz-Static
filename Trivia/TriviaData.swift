//
//  TriviaData.swift
//  Trivia
//
//  Created by Pragnavi Ravuluri Sai Durga on 3/11/24.
//

import Foundation
import UIKit

struct TriviaData {
    let TriviaCategory: TriviaCategory
}

enum TriviaCategory {
    case history
    case science
    case literature
    case popCulture
    
    var description: String {
        switch self {
            case .history:
                return "History"
            case .science:
                return "Science"
            case .literature:
                return "Literature"
            case .popCulture:
                return "Pop Culture"
        }
    }
    
    var question: String {
        switch self {
            case .history:
                return "Who was the first President of the United States?"
            case .science:
                return "What is the hardest natural substance on Earth?"
            case .literature:
                return "Who wrote the novel '1984'?"
            case .popCulture:
                return "Which album did Taylor Swift release in 2020?"
        }
    }
    
    var options: [String] {
        switch self {
            case .history:
                return ["Thomas Jefferson", "Abraham Lincoln", "George Washington", "John Adams"]
            case .science:
                return ["Gold", "Diamond", "Quartz", "Iron"]
            case .literature:
                return ["Aldous Huxley", "George Orwell", "Ray Bradbury", "Ernest Hemingway"]
            case .popCulture:
                return ["Lover", "Reputation", "Folklore", "1989"]
        }
    }
    
    var correctAnswer: String {
        switch self {
            case .history:
                return "George Washington"
            case .science:
                return "Diamond"
            case .literature:
                return "George Orwell"
            case .popCulture:
                return "Folklore"
        }
    }
}
