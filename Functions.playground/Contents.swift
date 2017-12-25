//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//func getMilk(howManyMilkCartons: Int) {
//    print("go to the shops")
//    print("buy \(howManyMilkCartons) cartons of milk")
//    print("pay \(howManyMilkCartons * 2)")
//    print("come home")
//}

func getMilk(howManyMilkCartons: Int, amountGiven: Int) -> Int {
    let cost = howManyMilkCartons * 2
    return amountGiven - cost
}

print("Your change is $\(getMilk(howManyMilkCartons: 4, amountGiven: 20))")
