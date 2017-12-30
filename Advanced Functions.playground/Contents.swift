// HIGHER ORDER FUNCTIONS = CALLBACK FUNCTIONS

import UIKit

func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}

func multiply (no1: Int, no2: Int) -> Int {
    return no1 * no2
}

calculator(n1: 2, n2: 3, operation: add)
calculator(n1: 2, n2: 3, operation: multiply)


/*
 
 Convert a function into a closure:
 
 func add (no1: Int, no2: Int) -> Int {
 return no1 + no2
 }
 
 CLOSURE:
 {      (no1: Int, no2: Int) -> Int in
    return no1 + no2
 }
 
 */

// Add using 'calculator' & closure
calculator(n1: 2, n2: 3, operation: {   (no1: Int, no2: Int) -> Int in
    return no1 + no2
    })

// Multiply using 'calculator' & closure
calculator(n1: 2, n2: 3, operation: {   (no1: Int, no2: Int) -> Int in
    return no1 * no2
})


// Version 2) Cut down closure
let result = calculator(n1: 2, n2: 3, operation: {(no1, no2) in no1 * no2})
print(result)

// Version 3) '$0' means first parameter, '$1' second parameter
let result2 = calculator(n1: 2, n2: 3, operation: {$0 * $1})
print(result2)

// Version 4) If the last parameter in function is a closure, then you can omit the parameter name: trailing closure
let result3 = calculator(n1: 2, n2: 3) {$0 * $1}
print(result3)

////// Practice with closures //////
let arrayEx = [5, 6, 2, 3, 5]

// increase each array element by 1
print(arrayEx.map({ (n1) in return n1 + 1 }))
print(arrayEx.map({$0+1}))

// turn each array element into string
print(arrayEx.map({"\($0)"}))


















