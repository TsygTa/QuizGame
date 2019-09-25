//
//  GameSession.swift
//  QuizGame
//
//  Created by Tatiana Tsygankova on 25/09/2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

import Foundation

// Класс иговой сессии
public class GameSession {
    var questionsNumber: Int
    var correctAnswersNumber: Int = 0
    
    var total: Int = 0
    var isHallHelpAvailable: Bool = true
    var isTwoIncorrectAvailable: Bool = true
    var isFriendCallAvailable: Bool = true
    
    init(questions: Int) {
        self.questionsNumber = questions
    }
}
