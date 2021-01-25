//
//  Question.swift
//  truefalsequizapp-ios
//
//  Created by ahmet on 22.01.2021.
//

import Foundation

struct Question {
    let text : String
    let answer : String
    
    init(q: String,a:String) {
        text = q
        answer = a
    }
}
