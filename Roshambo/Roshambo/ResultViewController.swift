//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Nikhil Gupta on 8/29/16.
//  Copyright © 2016 Megha Rastogi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var player : String!
    var computer : String!
    
    var rules : [Int: String] = [1 : "Rock", 2 : "Paper", 3 : "Scissor"]
    
    @IBAction func playAgain(sender: AnyObject) {
        computer = ""
        player = ""
        performSegueWithIdentifier("playAgain", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        computer = rules[randomDiceValue()]
        print("player "+player)
        print(computer)
        if player == computer{
                self.imageView.image = UIImage(named: "tie")
                self.result.text = "It's a Tie!"
        }
        else if player == "Rock" {
            if computer == "Paper"{
                self.imageView.image = UIImage(named: "paperCoversRock")
                self.result.text = "You lose! "+computer+" covers "+player
            }
            else{
                self.imageView.image = UIImage(named: "rockCrushesScissor")
                self.result.text = "You win! "+player+" crushes "+computer

            }
        }
        else if player == "Paper"{
            if computer == "Scissors"{
                self.imageView.image = UIImage(named: "scissorCutPaper")
                self.result.text = "You lose! "+computer+" cuts "+player
            }
            else{
                self.imageView.image = UIImage(named: "paperCoversRock")
                self.result.text = "You win! "+player+" covers "+computer
            }
        }
        else if player == "Scissor"{
            if computer == "Rock"{
                self.imageView.image = UIImage(named: "rockCrushesScissor")
                self.result.text = "You lose! "+computer+" crushes "+player
            }
            else{
                self.imageView.image = UIImage(named: "scissorCutPaper")
                self.result.text = "You win! "+player+" cuts "+computer
            }
        
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 3
        
        //print(randomValue)
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

}