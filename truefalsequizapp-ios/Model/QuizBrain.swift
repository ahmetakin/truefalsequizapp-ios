//
//  QuizBrain.swift
//  truefalsequizapp-ios
//
//  Created by ahmet on 22.01.2021.
//

import Foundation

struct QuizBrain {
    
    
    var questionNumber = 0
    var answerTrueCount = 0
    
    let questions = [
        Question(q: "Bir saat 60 Dakikadır", a: "True"),
        Question(q: "Bir hafta 10 Gündür", a: "False"),
        Question(q: "Her gün 25 saattir", a: "False"),
        Question(q: "Bir yıl 365 Gündür", a: "True"),
        Question(q: "Dünya Dikdörtgendir", a: "False"),
        Question(q: "3 sayısı 4ten büyüktür", a: "True"),
        Question(q: "Ocak ayı yılın 1. ayıdır", a: "False"),
        Question(q: "Şubat ayı Ocak Ayından Sonra Gelir", a: "True")
    ]
    
    func getQuestionText() -> String {
        return questions[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(questions.count)
    }
    
    mutating func getScore() -> Int {
        return answerTrueCount
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < questions.count {
            questionNumber += 1 
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer : String) -> Bool {
        if userAnswer == questions[questionNumber].answer {
            answerTrueCount += 1
            return true
        }else{
            return false
        }
    }
    
}

