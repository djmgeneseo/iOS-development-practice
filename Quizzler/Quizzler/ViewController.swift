//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Globals
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    // Keep track of the game's state: which question user is on
    var questionNumber: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    // START HERE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // app starts with the first question in QuestionBank
        // set the question label's text to the first question in QuestionBank object (allQuestions)
        nextQuestion()
    }

    // nothing happens until a button is pressed
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    func updateUI() {
        // Convert int to string
        scoreLabel.text = "\(score)"
        // Convert int to string
        progressLabel.text = "\(questionNumber+1) / \(allQuestions.list.count)"
        // view.frame.size.width is the entire screen's width. Must convert questionNumber to type of first number being multiplied, which is CGFloat
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    
    func nextQuestion() {
        // .count = length of array
        // While we have not yet reached the end of the quiz, display next question
        if questionNumber <= allQuestions.list.count - 1 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        } else {
            
            // GAME IS OVER: DISPLAY END SCREEN
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            // only one option in popup
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            // IMPORTED LIBRARY (Supporting Files)
            ProgressHUD.showSuccess("Correct!")
            score += 1
        } else {
            ProgressHUD.showError("Wrong!")
        }
        
    }
    
    func startOver() {
        score = 0
        questionNumber = 0
        nextQuestion()
    }
    
}
