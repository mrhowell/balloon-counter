//
//  Balloon.swift
//  NinetyNineBallons
//
//  Created by arikko on 7/13/15.
//  Copyright (c) 2015 arikko. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    
    var balloonNumber = 0
    var selectedImage = UIImage (named:"")
    
}


func createBalloons (numberOfBalloons: Int) {
    
    var myBalloons = Balloon()
    var myBallonArray = []
    
    for var balloonCount = 0; balloonCount < numberOfBalloons; balloonCount++ {
        
        let randomInteger = Int(arc4random_uniform(UInt32(4)))
        
        myBalloons.balloonNumber = myBalloons.balloonNumber + 1
        
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
       
            
            
        }
}

}