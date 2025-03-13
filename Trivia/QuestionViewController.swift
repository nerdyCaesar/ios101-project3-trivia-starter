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
    
    var currentQuestionPick: TriviaQuestion?
    
    var questions = TriviaQuestion.allQuestions  // Load all questions
    var currentQuestionIndex = 0 // Track the current question index
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.currentQuestionPick = TriviaQuestion(
            genre: "Entertainment: Video Games",
            question: "Which company developed 'Half-Life'?",
            choices: ["Valve", "id Software", "Epic Games", "Ubisoft"],
            correctAnswerIndex: 0
        )
        loadQuestion()
    }
    
    func loadQuestion() {
        
        if currentQuestionIndex < questions.count {
            let question = questions[currentQuestionIndex]
            
            questionLabel.text = question.question
            genreLabel.text = question.genre
            questionProgress.text = "Question \(currentQuestionIndex + 1)/\(questions.count)"
            
            choice1.setTitle(question.choices[0], for: .normal)
            choice2.setTitle(question.choices[1], for: .normal)
            choice3.setTitle(question.choices[2], for: .normal)
            choice4.setTitle(question.choices[3], for: .normal)
        } else {
            // Game over or show completion message
            questionLabel.text = "Quiz Completed!"
            genreLabel.text = ""
            questionProgress.text = ""
            choice1.isHidden = true
            choice2.isHidden = true
            choice3.isHidden = true
            choice4.isHidden = true
        }
        
    }
    
    
    
    @IBAction func answerChoice4(_ sender: UIButton) {
        checkAnswer(selectedButton: sender, answerIndex: 3)
    }
    @IBAction func answerChoice3(_ sender: UIButton) {
        checkAnswer(selectedButton: sender, answerIndex: 2)
    }
    @IBAction func answerChoice2(_ sender: UIButton) {
        checkAnswer(selectedButton: sender, answerIndex: 1)
    }
    @IBAction func answerChoice1(_ sender: UIButton) {
        checkAnswer(selectedButton: sender, answerIndex: 0)
    }
    
    func checkAnswer(selectedButton: UIButton, answerIndex: Int) {
            let correctIndex = questions[currentQuestionIndex].correctAnswerIndex
            
            // Check if the selected answer is correct
            if answerIndex == correctIndex {
                print("Correct Answer!")
                selectedButton.backgroundColor = .green // Highlight the correct answer
            } else {
                print("Wrong Answer!")
                selectedButton.backgroundColor = .red // Highlight the wrong answer
            }
            
            // Move to the next question after a short delay
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                // Reset button colors before moving to the next question
                self.choice1.backgroundColor = .clear
                self.choice2.backgroundColor = .clear
                self.choice3.backgroundColor = .clear
                self.choice4.backgroundColor = .clear
                
                // Move to the next question
                self.currentQuestionIndex += 1
                self.loadQuestion()
            }
        }
    
    
    
    
}
