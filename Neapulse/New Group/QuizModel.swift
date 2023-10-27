//
//  QuizModel.swift
//  Neapulse
//
//  Created by Vitor Kalil on 25/10/23.
//

import Foundation
import UIKit
import SwiftUI

struct Quiz{
    var questions:[Question]
    var questionIndex:Int = 0
 
    var characters = [Character(name:"Pulcinella"),Character(name:"Muna"),Character(name:"Partenope")]
    func getQuestion() -> String {
        return questions[questionIndex].text
    }
    mutating func nextQuestion() {
        if (questionIndex == (questions.count-1)){
            questionIndex = 0} else{questionIndex += 1}
        
        
    }
    func getAnswers() -> [String]{
        return questions[questionIndex].answers
    }
    func getCharacters(_var:Int) -> [Int]{
        if (_var == 0) {
            return questions[questionIndex].charIndex[0]
        }
        return questions[questionIndex].charIndex[1]
    }
    mutating func increasePoints(index:[Int]) {
        for num in index {
            characters[num].points += questions[questionIndex].pointsAdded
        }
    }
}
