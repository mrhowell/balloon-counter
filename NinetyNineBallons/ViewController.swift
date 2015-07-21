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
    
    // Initialize Balloon struct in array
    
    var myBalloons:[Balloon] = []
    var currentIndex = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    
 // Function to create 99 balloons with number and assigned random image and add to array
        
        func createBalloons (numberOfBalloons: Int) {
            
            self.myBalloons.append(Balloon(balloonNumber: 0, selectedImage: "BerlinTVTower.jpg"))
            
            for var balloonCount = 1; balloonCount < numberOfBalloons; balloonCount++ {
                
                let randomInteger = Int(arc4random_uniform(UInt32(4)))
                
                var x = randomInteger
                switch x {
                case 0:
                    self.myBalloons.append(Balloon(balloonNumber: balloonCount, selectedImage: "RedBalloon1.jpg"))
                case 1:
                    self.myBalloons.append(Balloon(balloonNumber: balloonCount, selectedImage: "RedBalloon2.jpg"))
                case 2:
                    self.myBalloons.append(Balloon(balloonNumber: balloonCount, selectedImage: "RedBalloon3.jpg"))
                default:
                    self.myBalloons.append(Balloon(balloonNumber: balloonCount, selectedImage: "RedBalloon4.jpg"))
                }
                
            }
            
            
        }
        
        // Call createBalloons function to create 100 Ballons in Array on view load
        
        createBalloons(100)
        
        //Display O index of myBalloon
        balloonCount.text = "\(myBalloons[0].balloonNumber) balloons"
        balloonImage.image = UIImage(named: "\(myBalloons[0].selectedImage)")

        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }

    @IBAction func nextBalloonButtonPressed(sender: UIBarButtonItem) {
    
     
        if currentIndex < myBalloons.count {
    
           let currentBalloon = self.myBalloons[currentIndex]
            
            UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
    
                self.balloonCount.text = "\(currentBalloon.balloonNumber) balloons"
                self.balloonImage.image = UIImage(named: "\(currentBalloon.selectedImage)")
                self.currentIndex = self.currentIndex + 1
  
                
//                self.balloonCount.text = "\(self.myBalloons[self.currentIndex].balloonNumber) balloons"
//                self.balloonImage.image = UIImage(named: "\(self.myBalloons[self.currentIndex].selectedImage)!")
//                self.currentIndex = self.currentIndex + 1
    
            }, completion: {
                (finished: Bool) -> () in
        })
    }
    
    else {
    self.balloonCount.text = "No more balloons"
            self.balloonImage.image = UIImage(named: "Oops.jpg")
            
    
    }

}

}





