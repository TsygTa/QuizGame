//
//  Question.swift
//  QuizGame
//
//  Created by Tatiana Tsygankova on 25/09/2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

import Foundation

public struct Question {
    let question: String
    let answers: [String]
    let correctAnswer: Int
    let friendAnswer: Int
    let hallAnswer: Int
}
