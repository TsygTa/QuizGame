//
//  Game.swift
//  QuizGame
//
//  Created by Tatiana Tsygankova on 25/09/2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

import Foundation

// Singleton класс игрры
public class Game {
    
    private init() {
        questions.append(Question(
            question: "Количество планет Солнечной системы",
            answers: ["11", "9", "8", "10"],
            correctAnswer: 2,
            friendAnswer: 2,
            hallAnswer: 2))
        questions.append(Question(
            question: "Ближайшая к Солнцу планета",
            answers: ["Венера", "Меркурий", "Марс", "Юпитер"],
            correctAnswer: 1,
            friendAnswer: 1,
            hallAnswer: 0))
        questions.append(Question(
            question: "Ближайшая к Земле звезда после Солнца",
            answers: ["Проксима Центавра", "Сириус", "Альдебаран","Вега"],
            correctAnswer: 0,
            friendAnswer: 1,
            hallAnswer: 1))
        questions.append(Question(
            question: "Какой химический элемент преобладает на планете Земля",
            answers: ["Кислород", "Водород", "Углерод","Железо"],
            correctAnswer: 0,
            friendAnswer: 0,
            hallAnswer: 2))
        questions.append(Question(
            question: "Наиболее яркая звезда созвездия Ориона",
            answers: ["Альтаир", "Денеб", "Бетельгейзе", "Мицар"],
            correctAnswer: 2,
            friendAnswer: 1,
            hallAnswer: 0))
    }
    
    static let shared = Game()
    
    // Иговая сессия
    var gameSession: GameSession?
    
    // Массив ррезультатов сессий
    var results: [Int] = []
    
    // Массив вопросов
    var questions: [Question] = []
}
