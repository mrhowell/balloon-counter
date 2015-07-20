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
    
    var myBalloons:[Balloon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var zeroBalloons = Balloon()
        zeroBalloons.balloonNumber = 0
        zeroBalloons.selectedImage = UIImage(named: "BerlinTVTower.jpg")
        
        
        balloonCount.text = "\(zeroBalloons.balloonNumber) Balloons"
        balloonImage.image = zeroBalloons.selectedImage
        
        
        for x in 0...99 {
            
//            for var balloonCount = 0; balloonCount < numberOfBalloons; balloonCount++ {
            
                let randomInteger = Int(arc4random_uniform(UInt32(4)))
                
//                myBalloons.balloonNumber = myBalloons.balloonNumber + 1
            
                var x = randomInteger
            
                switch x {
                case 0:
                    myBalloons.selectedImage = UIImage(named: "RedBalloon1.jpg")
                case 1:
                    myBalloons.selectedImage = UIImage(named: "RedBalloon2.jpg")
                case 2:
                    myBalloons.selectedImage = UIImage(named: "RedBalloon3.jpg")
                default:
                    myBalloons.selectedImage = UIImage(named: "RedBalloon4.jpg")
                    
                    
                    balloonImageArray.append("\(myBalloons.selectedImage)")
                    balloonCountArray.append(balloonCount)
            }
            
        }
        

        
        
        
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func barNextButtonPressed(sender: UIBarButtonItem) {
//        println(myBalloons)
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.balloonImage.image = balloon.selectedImage
            self.balloonCount.text = ("\(balloon.balloonNumber)")
            
            
            }, completion: {
                (finished: Bool) -> () in
        })
    
    }
    
}


