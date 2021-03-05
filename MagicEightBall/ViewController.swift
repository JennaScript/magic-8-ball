// AppDelegate.swift
// Magic 8 Ball
// Created by Jennalyn Kabiling

import UIKit

class ViewController: UIViewController {
    
    let answers = ["Yes, definitely!", "It is certain!", "Without a doubt!", "Yes!", "Most likely!", "Sure, why not?", "Same!", "Please, do tell me more!", "Reply hazy, please try again!", "Ask again later!", "Ummm... no.", "Very doubtful.", "Don't count on it!", "Not quite sure...", "Absolutely not!"]

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        // 1
        let maxIndex = UInt32(answers.count)
        // 2
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        // 3
        answerLabel.text = answers[randomIndex]
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
    
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
}

