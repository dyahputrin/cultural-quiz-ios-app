//
//  ViewController.swift
//  Cultural Quiz
//
//  Created by dyah.nariswari on 25/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    let quiz = [
        "Question 1",
        "Question 2",
        "Question 3"
    ]
    
    var questionNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNum += 1
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNum]
        
    }
    
    
}
