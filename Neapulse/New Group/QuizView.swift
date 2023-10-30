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
        VStack(spacing:35){
            
            ProgressView(value: Float(nostroQuiz.questionIndex)/Float(nostroQuiz.questions.count))
                .progressViewStyle(.linear)
                .padding()
        HStack(alignment:.center){
            Text(nostroQuiz.getQuestion()).font(.title)
                .multilineTextAlignment(.center)
                .bold()
        }.padding()
        Button(nostroQuiz.getAnswers()[0]){
            nostroQuiz.increasePoints(index:nostroQuiz.getCharacters(_var: 0))
            nostroQuiz.nextQuestion()
        }.font(.title3)
            .foregroundColor(.black)
            .frame(width:300,height: 55)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius:5.0)
        
        Button(nostroQuiz.getAnswers()[1]){
            nostroQuiz.increasePoints(index:nostroQuiz.getCharacters(_var: 1))
            nostroQuiz.nextQuestion()
        }.font(.title3)
            .foregroundColor(.black)
            .frame(width:300,height: 55)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius:5.0)
    
    
        }.frame(height:670)
    }
}

#Preview {
    QuizView()
}
