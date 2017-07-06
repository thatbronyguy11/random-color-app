//
//  ViewController.swift
//  random color
//
//  Created by Jackson Dunham on 7/6/17.
//  Copyright © 2017 Jackson Dunham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.randColor()
        
    //plan: run \/this\/ in 3 if statments, randomly picking a number between 0 and 2, and have it be randomly generated, and changed, every time the button is pressed.
    }
    func randColor() {

        let rint = arc4random_uniform(256)
        let r = CGFloat(rint)
        let gint = arc4random_uniform(256)
        let g = CGFloat(gint)
        let bint = arc4random_uniform(256)
        let b = CGFloat(bint)
        let bg = UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
        self.view.backgroundColor = bg
    }
    @IBAction func colorButton(_ sender: UIButton) {
        randColor()
    }
}

