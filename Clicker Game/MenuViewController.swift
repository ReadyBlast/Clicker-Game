//
//  MenuViewController.swift
//  Clicker Game
//
//  Created by XE on 19.10.2023.
//

import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var menuScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        menuScoreLabel.text = "Want to play?"
    }
    
    @IBAction func backToMenuScreen(_ segue: UIStoryboardSegue) {
        if let gameVC = segue.source as? GameViewController {
            menuScoreLabel.text = "Last Score: \(gameVC.scoreCounter)"
        } else if let endVC = segue.source as? EndgameViewController {
            menuScoreLabel.text = "Last Score: \(endVC.scoreCounter)"
        } else { return }
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
