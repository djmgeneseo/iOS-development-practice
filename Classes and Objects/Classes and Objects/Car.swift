//
//  Car.swift
//  Classes and Objects
//
//  Created by David Murphy on 12/26/17.
//  Copyright © 2017 David Murphy. All rights reserved.
//

import Foundation

// Create a new type called CarType
enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    var color = "Blue"
    var numberOfSeats = 5
    // assign CarType as the type for variable typeOfCar
    var typeOfCar : CarType = .Sedan
    
    init() {
        // default copy of object
    }
    
    convenience init(customerChosenColor : String) {
        self.init()
        color = customerChosenColor
    }
    
    // Methods
    func drive() {
        print("Driving...")
    }
}
