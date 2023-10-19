//
//  GameViewController.swift
//  Clicker Game
//
//  Created by XE on 19.10.2023.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    
    var timer: Timer?
    var scoreCounter: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        buttonRandomizer()
        updateScoreLabel()
    }
    

    @IBAction func greenButtonPressed(_ sender: Any) {
        buttonRandomizer()
        scoreCounter += 1
        updateScoreLabel()
    }
    
    @IBAction func redButtonPressed(_ sender: Any) {
        buttonRandomizer()
        scoreCounter += 1
        updateScoreLabel()
    }
    
    @IBAction func purpleButtonPressed(_ sender: Any) {
        buttonRandomizer()
        scoreCounter += 1
        updateScoreLabel()
    }
    
    func updateScoreLabel() {
        scoreLabel.text = "Score: \(scoreCounter)"
    }
    
    func buttonRandomizer() {
        let buttonsArray: [UIButton] = [redButton, greenButton, purpleButton]
        let randomValue = Int.random(in: 0...buttonsArray.count - 1)
        
        for (index, item) in buttonsArray.enumerated() {
            if index == randomValue {
                item.isEnabled = true
            } else {
                item.isEnabled = false
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showEndgameScreen" {
            if let destinationVC = segue.destination as? EndgameViewController {
                destinationVC.scoreCounter = scoreCounter
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
