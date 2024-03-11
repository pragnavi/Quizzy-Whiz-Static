//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Pragnavi Ravuluri Sai Durga on 3/11/24.
//

import UIKit

class TriviaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addGradient()
        let fakeData = TriviaData(TriviaCategory: .history)
        configure(with: fakeData)
    }
    
    private func configure(with trivia: TriviaData) {
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

    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var option1Button: UIButton!
    
    
    @IBOutlet weak var option2Button: UIButton!
    
    
    @IBOutlet weak var option3Button: UIButton!
    

    @IBOutlet weak var option4Button: UIButton!
    
  
    @IBAction func didTapOption1(_ sender: UIButton) {
    }
    
    @IBAction func didTapOption2(_ sender: UIButton) {
    }
    
    
    @IBAction func didTapOption3(_ sender: UIButton) {
    }
    
    @IBAction func didTapOtion4(_ sender: UIButton) {
    }
    

}
