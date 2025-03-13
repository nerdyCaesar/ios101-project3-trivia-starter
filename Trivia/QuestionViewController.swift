//
//  QuestionViewController.swift
//  Trivia
//
//  Created by Piyush Belbase on 12/03/2025.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionProgress: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var choice4: UIButton!
    
    var currentQuestionPick: TriviaQuestion!
    override func viewDidLoad() {
        super.viewDidLoad()
        let currentQuestionPick = TriviaQuestion(
            category: "Entertainment: Video Games",
            question: "Which company developed 'Half-Life'?",
            choices: ["Valve", "id Software", "Epic Games", "Ubisoft"],
            correctAnswerIndex: 0
        )
            
        }
    }
    


