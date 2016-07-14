

import Foundation

// Number Type Conversion

var str = "Hello, playground"
var num = 1_234_456_238
var num2: Int = 1_234_456_238
var num2_1: Int = 3
var num3: Float = 1.438
var num4: Double = 2.4839

var num5: Double = Double(num2_1) * Double(num3) * num4
print("num5: \(num5)")


// Optionals

var maybeAString: String?
print(maybeAString)
maybeAString = "test"
print(maybeAString)
print(maybeAString!)
let definiteString = maybeAString!
print(definiteString)


// String printf style

var get_word2 = "integer is"
var get_num3: Int = 4
var get_num4: Float = 5.249
var get_num5: Float = 6.14893
print(String(format: "The %@, %d and the float, rounded to whole is %.0f, and the float rounded to 2 decimals is %.2f", get_word2, get_num3, get_num4, get_num5))


// More String Functions

var quote = "In the end, the best president was Abraham Lincoln."
// Search
if quote.hasPrefix("In the end") {
    print("has prefix")
}
if quote.hasSuffix("Abraham Lincoln") {
    print("has suffix")
}
// Uppercase/lowercase
print(quote.lowercaseString)
print(quote.uppercaseString)
// Search string at index
print("str count: ", quote.characters.count)
print("index end: ", quote.characters.endIndex)
print("quote at index 1 intead of 0: ", quote[quote.characters.startIndex.successor()])
var count: Int = quote.characters.count
// Loop through chars in string
var i: Int = 0
for i in 0..<count {
    
    var index = quote.characters.startIndex.advancedBy(i)
    let str = quote[index]
}

// Replace at char end
quote.insert("!", atIndex: quote.characters.endIndex.predecessor())
quote.removeAtIndex(quote.characters.endIndex.predecessor())
print(quote)


//































//: [Next](@next)
