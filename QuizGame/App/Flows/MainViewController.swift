//
//  MainViewController.swift
//  QuizGame
//
//  Created by Tatiana Tsygankova on 25/09/2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func onGameButtonTap(_ sender: Any) {
        
        Game.shared.gameSession = GameSession(questions: Game.shared.questions.count)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

