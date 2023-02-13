//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel:UILabel!
    @IBOutlet weak var barProgress: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        UIupdate()
    }

     var questionNumber = 0
     
    @IBAction func trueButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let uGotItRight = quizBrain.checkAnswer(_userAnswer: userAnswer)
        
        if uGotItRight {
            sender.backgroundColor = UIColor.green
            
        }else {
            sender.backgroundColor = UIColor.red
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(UIupdate), userInfo: nil, repeats: false)
        quizBrain.nextQuestion()
}
      

    @objc func UIupdate(){
        questionLabel.text = quizBrain.getQuestionText()
        barProgress.progress = quizBrain.getProgress()
        scoreLabel.text =  "Score: \(quizBrain.getScore())"
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
}

