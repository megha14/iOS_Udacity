//
//  ViewController.swift
//  ColorMaker
//
//  Created by Jason Schatz on 11/2/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!
    
    var red: Float = 0.0
    var green: Float = 0.0
    var blue: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set colorView on launch
        changeColorComponent()
    }
    
    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redControl == nil {
            return
        }
        red = self.redControl.value
        green = self.greenControl.value
        blue = self.blueControl.value
        
        let r: CGFloat = CGFloat(red)
        let g: CGFloat = CGFloat(green)
        let b: CGFloat = CGFloat(blue)
                
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}

