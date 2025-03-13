//
//  QuestionPick.swift
//  Trivia
//
//  Created by Piyush Belbase on 12/03/2025.
//

import Foundation

struct TriviaQuestion {
    let genre: String       // The category or genre of the question
    let question: String    // The trivia question text
    let choices: [String]   // An array containing four answer choices
    let correctAnswerIndex: Int  // The index of the correct answer in the choices array

    // Static array containing all trivia questions
    static let allQuestions: [TriviaQuestion] = [
        TriviaQuestion(
            genre: "Entertainment: Video Games",
            question: "Which company developed 'Half-Life'?",
            choices: ["Valve", "id Software", "Epic Games", "Ubisoft"],
            correctAnswerIndex: 0
        ),
        TriviaQuestion(
            genre: "Science",
            question: "What is the chemical symbol for gold?",
            choices: ["Ag", "Au", "Pb", "Fe"],
            correctAnswerIndex: 1
        ),
        TriviaQuestion(
            genre: "History",
            question: "Who was the first president of the United States?",
            choices: ["Abraham Lincoln", "George Washington", "Thomas Jefferson", "John Adams"],
            correctAnswerIndex: 1
        )
    ]
}
