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
        
        
        var myBalloons = Balloon()
        myBalloons.balloonNumber = 0
        myBalloons.selectedImage = UIImage(named: "BerlinTVTower.jpg")
        
        
        balloonCount.text = "\(myBalloons.balloonNumber) Balloons"
        balloonImage.image = myBalloons.selectedImage
        
        
        
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func barNextButtonPressed(sender: UIBarButtonItem) {
    
        
    
    }
    

//    UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
//    
//    self.balloonImage = myRandomBalloons.image
//    self.balloonCount.text = myRandomBalloons.number
//    
//    }, completion: {
//    (finished: Bool) -> () in
//    })
    
    
}




//func createBalloons () {
//
//    var myRandomBallons = [Balloon]()
//    var ballonImage = ""
//    
//    for var i = 0; i < 100; {
//        
//        let randomImageNumber = Int(arc4random_uniform(UInt32(4)))
//        
//        
//        var x = randomImageNumber
//        
//        switch x {
//        case 1:
//            ballonImage = "RedBallon1.jpg"
//        case 2:
//            ballonImage = "RedBalloon2.jpg"
//        case 3:
//            ballonImage = "RedBalloon3.jpg"
//        case 4:
//            ballonImage = "RedBalloon4.jpg"
//            
//            myRandomBallons.append(number: i, image: ballonImage)
//            
//            i++
//            
//        }
//        
//}
