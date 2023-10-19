//
//  EndgameViewController.swift
//  Clicker Game
//
//  Created by XE on 19.10.2023.
//

import UIKit

class EndgameViewController: UIViewController {
    @IBOutlet weak var endgameScoreLabel: UILabel!
    
    var scoreCounter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        endgameScoreLabel.text = "Score: \(scoreCounter)"
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
