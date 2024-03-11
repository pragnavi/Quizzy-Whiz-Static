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
                return "What is my name?"
            case .science:
                return "What is my name?"
            case .literature:
                return "What is my name?"
            case .popCulture:
                return "What is my name?"
        }
    }
    
    var options: [String] {
        switch self {
            case .history:
                return ["Pragnavi", "John", "Katy", "Perry"]
            case .science:
                return ["Pragnavi", "John", "Katy", "Perry"]
            case .literature:
                return ["Pragnavi", "John", "Katy", "Perry"]
            case .popCulture:
                return ["Pragnavi", "John", "Katy", "Perry"]
        }
    }
    
    var correctAnswer: String {
        switch self {
            case .history:
                return "Pragnavi"
            case .science:
                return "Perry"
            case .literature:
                return "Katy"
            case .popCulture:
                return "John"
        }
    }
}
