//
//  QuizView.swift
//  Neapulse
//
//  Created by Vitor Kalil on 25/10/23.
//

import SwiftUI

struct QuizView: View {
    @State var nostroQuiz = Quiz(questions: [
        Question(text: "What would you like to do the most?",answers: ["Drink good wine and live life as a work of art","Discover new places and find better myself "],charIndex: [[0,1,2,3,4,5,6,7],[8,9,10,11]]),
        Question(text: "What is closest to your life's purpouse?",answers: ["To love art and create something new","To work at my best to enjoy life and my free time"],charIndex: [[0,1,2,3],[4,5,6,7,8,9,10,11]]),
        Question(text: "How is your relation with the world around you?",answers: ["I like to choose what can nourish my vision","I want to explore every place and know more and more"],charIndex: [[0,1,2,3],[8,9,10,11]],pointsAdded: 0.5),
        
        Question(text: "How would you rather spend a day in Naples?",answers: ["Going to theatres to watch shows","Visiting the city's wonderful museums"],charIndex: [[0],[1]]),
        Question(text: "How would you rather spend a day in Naples?",answers: ["Listening to music (Do you know Pino Daniele?)","Reading books while sitting on the rocks at Mergellina"],charIndex: [[2],[3]]),
        Question(text: "What characteristic of Art gets you more emotional?",answers: ["Rediscovering what I know of the world transfigured and full of new meanings","The memory behind the sound of a word or a song"],charIndex: [[0,1],[2,3]]),
        
        Question(text: "How would you rather spend a day in Naples?",answers: ["Go shopping around the fabulous Via Toledo","Sitting at the diner table eating pizza and spaghetti with mussels"],charIndex: [[4],[5]]),
        Question(text: "How would you rather spend a day in Naples?",answers: ["Napping to pull an all-nighter in the club","Drinking spritz with friends at Quartieri Spagnoli"],charIndex: [[6],[7]]),
        Question(text: "What gives you he most pleasure?",answers: ["Going out to dinner wearing my most elegant dress, eating well, and being admired","Unbridled excesses, a life of sex, alcohol, and rock 'n roll"],charIndex: [[4,5],[6,7]]),
        
        Question(text: "How would you rather spend a day in Naples?",answers: ["Going for a walk and observe monuments and churches","Chilling on the grass of Capodimonte park with my pet"],charIndex: [[8],[9]]),
        Question(text: "How would you rather spend a day in Naples?",answers: ["Visiting mysterious places, such as Underground Naples and Fontanelle cemetery","Sunbathing at the most beautiful beaches of Sorrento coast"],charIndex: [[10],[11]]),
        Question(text: "What is closer to your definition of beauty?",answers: ["The serene peace of a beautiful landscape, the harmonious order of a statue, the perfection of a diamond","The secret charm of things, tormented like the depth of the sea, poised like a flame"],charIndex: [[8,9],[10,11]]),


    ])

    var body: some View {
        VStack(spacing:50){
            
            ProgressView(value: Float(nostroQuiz.questionIndex)/Float(5))
                .progressViewStyle(.linear)
                .padding(.bottom, 30.0)
          
            
        HStack(alignment:.center){
            Text(nostroQuiz.getQuestion()).font(.title)
                .multilineTextAlignment(.center)
                .bold()
        }.padding(.top, 30.0)
            
            
        Button(nostroQuiz.getAnswers()[0]){
            
            nostroQuiz.increasePoints(index:nostroQuiz.getCharacters(_var: 0))
            nostroQuiz.nextQuestion()
            
        }.font(.title3)
            .foregroundColor(.black)
            .frame(width:350,height: 75)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius:5.0)
        
            
        Button(nostroQuiz.getAnswers()[1]){
            
            nostroQuiz.increasePoints(index:nostroQuiz.getCharacters(_var: 1))
            nostroQuiz.nextQuestion()
            
        }.font(.title3)
            .foregroundColor(.black)
            .frame(width:350,height: 75)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius:5.0)
            
            //Testing
            Text(String(nostroQuiz.characters[5].points))
            
            
        }.frame(height:670)
    }
}

#Preview {
    QuizView()
}
