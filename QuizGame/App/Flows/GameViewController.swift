//
//  GameViewController.swift
//  QuizGame
//
//  Created by Tatiana Tsygankova on 25/09/2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    private let questions = Game.shared.questions
    private let gameSession = Game.shared.gameSession
    
    private var questionIndex: Int = 0

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerALabel: UILabel!
    
    @IBOutlet weak var answerBLabel: UILabel!
    
    @IBOutlet weak var answerCLabel: UILabel!
    
    @IBOutlet weak var answerDLabel: UILabel!
    
    @IBOutlet weak var answerSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var furtherButton: UIButton!
    
    @IBOutlet weak var hallHelpButton: UIButton!
    
    @IBOutlet weak var twoIncorrectButton: UIButton!
    
    @IBOutlet weak var friendCallButton: UIButton!
    
    @IBOutlet weak var helpLabel: UILabel!
    
    @IBAction func onFurtherButtonTap(_ sender: Any) {
        
        guard let session = gameSession,
                answerSegmentedControl.isSelected else {return}
        
        let answer = answerSegmentedControl.selectedSegmentIndex
        
        if answer == questions[questionIndex].correctAnswer {
            session.correctAnswersNumber += 1
            questionIndex += 1
            
            if questionIndex < questions.count {
                updateScreen()
            } else {
                gameOver()
            }
        } else {
            
        }
    }
    
    @IBAction func onHallHelpTap(_ sender: Any) {
        guard let session = gameSession else {return}
        
        let question = questions[questionIndex]
        helpLabel.text = question.answers[question.hallAnswer]
        session.isHallHelpAvailable = false
        hallHelpButton.isEnabled = false
    }
    
    @IBAction func onTwoIncorrectTap(_ sender: Any) {
        guard let session = gameSession else {return}
        
        let question = questions[questionIndex]
        
        // TO DO выбор вопосов, которые должны быть скрыты
        
        session.isTwoIncorrectAvailable = false
        twoIncorrectButton.isEnabled = false
    }
    
    @IBAction func onFriendCallTap(_ sender: Any) {
        guard let session = gameSession else {return}
        
        let question = questions[questionIndex]
        helpLabel.text = question.answers[question.hallAnswer]
        session.isFriendCallAvailable = false
        friendCallButton.isEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateScreen()
        
    }
    
    private func gameOver() {
        
        Game.shared.gameSession = nil
        
    }
    
    private func updateScreen() {
        guard let session = gameSession else {return}
        
        questionLabel.text = questions[questionIndex].question
        
        answerALabel.text = "A: " + questions[questionIndex].answers[0]
        answerBLabel.text = "B: " + questions[questionIndex].answers[1]
        answerCLabel.text = "C: " + questions[questionIndex].answers[2]
        answerDLabel.text = "D: " + questions[questionIndex].answers[3]
        
        
        hallHelpButton.isEnabled = session.isHallHelpAvailable ? true : false
        twoIncorrectButton.isEnabled = session.isTwoIncorrectAvailable ? true : false
        friendCallButton.isEnabled = session.isFriendCallAvailable ? true : false
        
        helpLabel.text = ""
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
