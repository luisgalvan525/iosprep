import UIKit


///iOS Prep



///Write a func that accepts a String as its only parameter, and returns true if the string has only unique letters
func challenge1(string: String) -> Bool {
    let uniqueLetters = Set(string)
    return uniqueLetters.count == string.count
}


assert(challenge1(string: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(string: "abcdefghijklmnopqrstuvxyz") == true, "Challenge 1 failed")
assert(challenge1(string: "Hello, world") == false, "Challenge 1 failed")


///Write a func that accepts a string as its only parameter and returns true if the string reads the same reversed, ignoring case
func challenge2(input: String) -> Bool {
    let lowercase = input.lowercased()
    return lowercase.reversed() == Array(lowercase)
}

challenge2(input: "rotator")
challenge2(input: "Rats live on no evil star")
challenge2(input: "Hello, world")


///Write a func that accepts two String parameters, and returns true if they contain the same characters in any order
func challenge3(firstInput: String, secondInput: String) -> Bool {
    let firstSort = Array(firstInput).sorted()
    let secondSort = Array(secondInput).sorted()
    
    return firstSort == secondSort
}

challenge3(firstInput: "abca", secondInput: "abca")
challenge3(firstInput: "abc", secondInput: "cba")
challenge3(firstInput: "a1 b2", secondInput: "b1 a2")
challenge3(firstInput: "abc", secondInput: "abca")


