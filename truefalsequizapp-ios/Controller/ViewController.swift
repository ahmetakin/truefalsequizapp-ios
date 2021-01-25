//
//  ViewController.swift
//  truefalsequizapp-ios
//
//  Created by ahmet on 22.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showQuestion()
    }

    @IBAction func answerButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        let userIsRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userIsRight {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()//sonraki soruya geçildi
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(showQuestion), userInfo: nil, repeats: false) // 2salise sonra diğer soruyu ekrana yazdır
    }
    
    
    @objc func showQuestion(){
        questionText.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}

