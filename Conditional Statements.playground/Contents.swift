//: Playground - noun: a place where people can play

import UIKit

func loveCalculator (yourName: String, theirName: String) -> String {
    
    // Return uint32 between 0 and 100
    let loveScore = arc4random_uniform(101)
    
    if (loveScore>80) {
        return "Your love score is \(loveScore). You love each other like Kanye loves Kanye"
    } else if (loveScore >= 40 && loveScore <= 80) {
        return "Your love score is \(loveScore). You go together like coke and mentos"
    } else {
        return "Your love score is \(loveScore). No love possible, you'll be forever alone!"
    }
}

print(loveCalculator(yourName: "David", theirName: "Victoria"))
