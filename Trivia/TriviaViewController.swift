//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Pragnavi Ravuluri Sai Durga on 3/11/24.
//

import UIKit

class TriviaViewController: UIViewController {

    private var triviaQuestions = [TriviaData]()
    private var selectedtriviaQuestion = 0
    private var correctAnswers = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradient()
        triviaQuestions = createMockData()
        configure(with: triviaQuestions[selectedtriviaQuestion])
    }
    
    private func createMockData() -> [TriviaData] {
        let mockData1 = TriviaData(TriviaCategory: .history)
        let mockData2 = TriviaData(TriviaCategory: .science)
        let mockData3 = TriviaData(TriviaCategory: .literature)
        let mockData4 = TriviaData(TriviaCategory: .popCulture)
        return [mockData1, mockData2, mockData3, mockData4]
    }
    
    private func configure(with trivia: TriviaData) {
        questionCountLabel.text = ("Question: \(selectedtriviaQuestion+1) / \(triviaQuestions.count)")
        triviaCategory.text = trivia.TriviaCategory.description
        questionLabel.text = trivia.TriviaCategory.question
        option1Button.setTitle(trivia.TriviaCategory.options[0], for:.normal)
        option2Button.setTitle(trivia.TriviaCategory.options[1], for:.normal)
        option3Button.setTitle(trivia.TriviaCategory.options[2], for:.normal)
        option4Button.setTitle(trivia.TriviaCategory.options[3], for:.normal)
    }
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0.54, green: 0.88, blue: 0.99, alpha: 1.00).cgColor,
                                UIColor(red: 0.51, green: 0.81, blue: 0.97, alpha: 1.00).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

    
    @IBOutlet weak var questionCountLabel: UILabel!
    
    @IBOutlet weak var triviaCategory: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var option1Button: UIButton!
    
    
    @IBOutlet weak var option2Button: UIButton!
    
    
    @IBOutlet weak var option3Button: UIButton!
    

    @IBOutlet weak var option4Button: UIButton!
    
  
    @IBAction func didTapOption1(_ sender: UIButton) {
        selectedtriviaQuestion = min(triviaQuestions.count - 1, selectedtriviaQuestion + 1)
        configure(with: triviaQuestions[selectedtriviaQuestion])
    }
    
    
    @IBAction func didTapOption2(_ sender: UIButton) {
        selectedtriviaQuestion = min(triviaQuestions.count - 1, selectedtriviaQuestion + 1)
        configure(with: triviaQuestions[selectedtriviaQuestion])
    }
    
    
    @IBAction func didTapOption3(_ sender: UIButton) {
        selectedtriviaQuestion = min(triviaQuestions.count - 1, selectedtriviaQuestion + 1)
        configure(with: triviaQuestions[selectedtriviaQuestion])
    }
    

    @IBAction func didTapOption4(_ sender: UIButton) {
        selectedtriviaQuestion = min(triviaQuestions.count - 1, selectedtriviaQuestion + 1)
        configure(with: triviaQuestions[selectedtriviaQuestion])
    }
    
}
