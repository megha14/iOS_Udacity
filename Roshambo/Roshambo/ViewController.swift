//
//  ViewController.swift
//  Roshambo
//
//  Created by Nikhil Gupta on 8/26/16.
//  Copyright © 2016 Megha Rastogi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var choice : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func paper(sender: AnyObject) {
        self.choice = "Paper"
        startGame()
    }
   
    @IBAction func scissor(sender: AnyObject) {
        self.choice = "Scissor"
        startGame()
    }
    @IBAction func rock(sender: AnyObject) {
        self.choice = "Rock"
        startGame()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "startGame" {
            let controller = segue.destinationViewController as!
            ResultViewController
            controller.player = self.choice
        }        
    }
    
    func startGame(){
        performSegueWithIdentifier("startGame", sender: self)
    }
}

