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
    
    var number: Int = 0
    var image = UIImage(named: <#String#>)
    
}

func createBalloons () {

    var myBalloon = Balloon()
    var balloonCollection = [0...99]

    
    let randomImageNumber = Int(arc4random_uniform(UInt32(4)))

    
    var x = randomImageNumber
        
        switch x {
        case 1:
            myBalloon.image = "RedBalloon1.jpg"
        case 2:
            myBalloons.image = "RedBalloon2.jpg"
        case 3:
            myBalloons.image = "RedBalloon3.jpg"
        case 4:
            myBalloons.image = "RedBalloon4.jpg"
        
        
        i++
            
    }
    
    
}