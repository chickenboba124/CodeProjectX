//: [Previous](@previous)

import Foundation


// Tuples

var httpStatus: (Int, String) = (200, "Ok")

var playerScores: ([Int], firstName: String, lastName: String)

playerScores = ([40, 10, 32], "Steve", "Micheals")

print(playerScores)

let highScore = playerScores.0.maxElement()!

print("\(playerScores.1) scored a high score of \(highScore)")

// decompose tuple
let (scores, firstName, lastName) = playerScores

// add up 3 scores, divide by count (Avg)
let avgScore = Double(scores.reduce(0, combine: +)) / Double(scores.count)

// only need one of teh values, ommit the 2nd value
let (httpCode, _) = httpStatus

print(httpCode)



// Break Continue, Labels

var i = 0
start: repeat {
    i += 1
    do {
        print("hello")
        if (i < 3) {
            continue start
        }
    }
    print("is past 3")
} while i < 10









//: [Next](@next)
