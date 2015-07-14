//
//  ViewController.swift
//  NinetyNineBallons
//
//  Created by arikko on 7/13/15.
//  Copyright (c) 2015 arikko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonImage: UIImageView!
    @IBOutlet weak var balloonCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var startText = "No Balloons"
    
        balloonCount.text = startText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func barNextButtonPressed(sender: UIBarButtonItem) {
    }

}

