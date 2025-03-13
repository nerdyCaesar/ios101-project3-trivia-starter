//
//  QuestionPick.swift
//  Trivia
//
//  Created by Piyush Belbase on 12/03/2025.
//

import Foundation


struct TriviaQuestion {
    let category: String       // The category or genre of the question
    let question: String       // The trivia question text
    let choices: [String]      // An array containing four answer choices
    let correctAnswerIndex: Int  // The index of the correct answer in the choices array
}
