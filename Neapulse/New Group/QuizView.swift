//
//  QuizView.swift
//  Neapulse
//
//  Created by Vitor Kalil on 25/10/23.
//

import SwiftUI

struct QuizView: View {
    @State var nostroQuiz = Quiz(questions: [Question(text: "Sei Bart?",answers: ["Sì","No"],charIndex: [[0,1],[]]),Question(text: "Sei Vitor?",answers: ["Sì","No"],charIndex: [[0],[]])])
    var body: some View {
        Text(nostroQuiz.getQuestion())
        Button(nostroQuiz.getAnswers()[0]){
            nostroQuiz.increasePoints(index:nostroQuiz.getCharacters(_var: 0))
            nostroQuiz.nextQuestion()
        }
        Button(nostroQuiz.getAnswers()[1]){
            nostroQuiz.increasePoints(index:nostroQuiz.getCharacters(_var: 1))
            nostroQuiz.nextQuestion()
        }
        Text(String(nostroQuiz.characters[0].points))
        Text(String(nostroQuiz.characters[1].points))
    }
    
}

#Preview {
    QuizView()
}
