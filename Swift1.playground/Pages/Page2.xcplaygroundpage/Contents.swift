//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

    // Arrays

var someArray: [String] = ["Larry", "Moe", "Curly"]
print("count", someArray.count)
print("empty: ", someArray.isEmpty)
print("contains moe: ", someArray.contains("Moe"))
let larry = someArray[0];
var someArraySlice2 = someArray[0..<2].sort(>)
var someArray2: [String] = Array(someArraySlice2)
var fourStooges = someArray
fourStooges.append("Shemp")
let lastStooge = fourStooges.removeLast()
fourStooges.insert("Shemp", atIndex: 0);
var allStooges: [String] = fourStooges + ["Ted", "Steve"]
allStooges += ["Mike", "Tim"]
allStooges.removeRange(1...3)
allStooges.sortInPlace()

allStooges.removeAll()
allStooges += ["Larry", "Moe", "Curly"]
var famousGroupsOfThree = [
    allStooges,
    ["Huey", "Duey", "Louey"],
    ["Alvin", "Simon", "Theodore"]
]


// Dictionaries (Hash Arrays)

var stockQuotes: [String: Float] = [
    "NFL": 43.2,
    "NBA": 34.5,
    "MSN": 96.2
]

var birthYears: [String: Int] = [:]

var stockQuoteKeys = Array(stockQuotes.keys)
var stockQuoteValues = Array(stockQuotes.values)
var NFLValue = stockQuotes["NFL"]!  // needs to be unwrapped
stockQuotes["MLB"] = 29.49
print(stockQuotes)
stockQuotes["NBA"] = nil
print(stockQuotes)

var bostonMarathonResults: [Int: [String: String]] = [
    1: [
        "Winner": "Steve Micheals",
        "Time": "2:10:33",
        "Country": "ETH"
    ]
]

let winnerName = bostonMarathonResults[1]?["Winner"]
let winnerName2 = bostonMarathonResults[1]?["Winner"]!
var winnerName3 = bostonMarathonResults[1]?["Winner2"]



// Sets

var students: Set<String> = ["Alex", "Steve", "Mike", "Tim", "Eddie"]

print(students)
print(students.count)
print(students.isEmpty)

var studentsArray: Array<String>

studentsArray = Array(students)
studentsArray.sortInPlace()
print(studentsArray)

students.contains("Alex")

// Manipulate Sets
var schoolBusStudents: Set<String> = ["Steve", "Tim", "Eddie"]

// member is a piece of passed in variable
schoolBusStudents.isSubsetOf(students)

// member contains passed in variable
students.isSupersetOf(schoolBusStudents)

// member and passed in variable share no common values
students.isDisjointWith(schoolBusStudents)


var students2: Set<String> = ["Alex", "Steve", "Mike", "Tim", "Eddie"]

var campAttendees: Set<String> = ["Sara", "Mike", "Susan", "Eddie", "Alex"]

// get students2 shared by both
var commonStudents = students2.intersect(campAttendees)

// get students returned that do not join, left overs
var otherStudents = students2.exclusiveOr(campAttendees)

// all students, without duplicates
var allStudents = students2.union(campAttendees)

// include all students2, remove shared with camp attendees
var studentsButNotShared = students2.subtract(campAttendees)

students2.insert("Bob")

let removed = students2.remove("Bob")

print(removed!)

print(students2)

students2.insert("Bob")

let index = students2.indexOf("Bob")

students2.removeAtIndex(index!)

print(students2)

// merge all values in camp attendees that aren't already there
students2.unionInPlace(campAttendees)

print(students2)



// Nested Sets

var stringSet1: Set = ["a", "b", "c"]
var stringSet2: Set = ["j", "k", "l"]

var setOfStringSets: Set = [stringSet1, stringSet2]

print(setOfStringSets)











//: [Next](@next)
