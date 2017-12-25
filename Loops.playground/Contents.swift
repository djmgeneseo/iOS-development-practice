//: Playground - noun: a place where people can play

import UIKit

let arrayOfNumbers = [1,2,3,4,5,6,7,8]

var sum = 0;

//for number in arrayOfNumbers {
//    //print(number)
//    sum += number;
//}

//print(sum)


//for number in 1...10 {
//    print(number)
//}


//for number in 1..<10 {
//    print(number)
//}


// print even numbers between 1 and 9
//for number in 1..<10 where number % 2 == 0 {
//    print(number)
//}



//func beerSong() -> String {
//    var lyrics: String = ""
//
//    for number in (1...99).reversed() {
//        let newLine: String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number-1) bottles of beer on the wall. \n"
//        lyrics += newLine
//    }
//
//    lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
//    return lyrics
//}
//
//print(beerSong())


// Can rename internal parameter; still need to call parameter's name when passing argument from outside function
//func beerSong(withThisManyBottles totalNumberOfBottles : Int) -> String {
//    var lyrics: String = ""
//
//    for number in (1...totalNumberOfBottles).reversed() {
//        let newLine: String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number-1) bottles of beer on the wall. \n"
//        lyrics += newLine
//    }
//
//    lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
//    return lyrics
//}
//
//print(beerSong(withThisManyBottles: 25))



// '_' means you don't need to type parameter name with argument value
func beerSong(_ withThisManyBottles: Int) -> String {
    var lyrics: String = ""
    
    for number in (1...withThisManyBottles).reversed() {
        let newLine: String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number-1) bottles of beer on the wall. \n"
        lyrics += newLine
    }
    
    lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    return lyrics
}

print(beerSong(25))






















