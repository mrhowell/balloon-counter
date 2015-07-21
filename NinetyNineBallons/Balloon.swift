//
//  Balloon.swift
//  NinetyNineBallons
//
//  Created by arikko on 7/13/15.
//  Copyright (c) 2015 arikko. All rights reserved.
//

import Foundation
import UIKit

//Define Balloon as struct

struct Balloon {
    
    var balloonNumber: Int = 0
    var selectedImage: String = ""
    
}

// Initialize Balloon struct in array
var myBalloons:[Balloon] = []

// Create 99 balloons with number and assigned random image

func createBalloons () {
    
 
    for var balloonCount = 0; balloonCount < 100; balloonCount++ {
        
        let randomInteger = Int(arc4random_uniform(UInt32(4)))
      
   
        var x = randomInteger
        switch x {
        case 0:
            myBalloons.append(Balloon(balloonNumber: balloonCount, selectedImage: "RedBalloon1.jpg"))
        case 1:
             myBalloons.append(Balloon(balloonNumber: balloonCount, selectedImage: "RedBalloon2.jpg"))
        case 2:
            myBalloons.append(Balloon(balloonNumber: balloonCount, selectedImage: "RedBalloon3.jpg"))
        default:
            myBalloons.append(Balloon(balloonNumber: balloonCount, selectedImage: "RedBalloon4.jpg"))
           
          
            
        }

    }

    
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
