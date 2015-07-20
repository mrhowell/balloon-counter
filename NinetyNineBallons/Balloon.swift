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
    var balloonImageArray:[String] = []
    var balloonCountArray:[Int] = []
    
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
       
       
       balloonImageArray.append("\(myBalloons.selectedImage)")
       balloonCountArray.append(balloonCount)
            
            
}

}

    var thisBalloon:String = balloonImageArray[0]
    println("\(thisBalloon)!")
    
}

/func createBalloons () {
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
