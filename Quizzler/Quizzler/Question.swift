import Foundation

class Question {
    
    // Initialize properties
    let questionText: String
    let answer: Bool
    
    
    // INIT = CONSTRUCTOR
    init(_ text: String, _ correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}

//class ExampleClass {
//    // create object of Question class
//    let question = Question("What's the meaning of life?", true)
//    let question2 = Question("Are you smart?", false)
//}

