//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by David Murphy on 12/26/17.
//  Copyright © 2017 David Murphy. All rights reserved.
//

import Foundation

// SelfDrivingCar is a subclass of the Car class. Car class is therefore a superclass of the SelfDrivingCar class
class SelfDrivingCar : Car {
//    var destination : String = "1 Infinite Loop"
    var destination : String?
   
    override func drive() {
        // carry out code in drive method
        super.drive()
        
//        if destination != nil {
//            print("Driving towards " + destination! + "...")
//        }
        
        // optional binding: create new variable in if statement condition. Code will only execute if it is safe to do so (if useSetDestination is NOT nil)
        if let userSetDestination = destination {
            print("Driving towards " + userSetDestination + "...")
        }
        
    }
}
