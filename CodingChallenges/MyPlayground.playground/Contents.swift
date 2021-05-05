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


///Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method
extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}

print("Hello, world" .fuzzyContains("Hello"))
print("Hello, world" .fuzzyContains("Goodbye"))



///Write a function that accepts a string, and returns how many times a specific character appears. taking case into account
func challenge4(input: String, count: Character) -> Int {
    
    var letterCounter = 0
    
    for letter in input {
        if letter == count {
            letterCounter += 1
        }
    }
    
    return letterCounter
}


challenge4(input: "The rain in Spain", count: "a")


///Write a func that accepts a string as its input, and returns the same string with duplicate letters removed
func challenge6(input: String) -> String {
    
    var usedLetter = [Character]()
    
    
    for letter in input {
        if !usedLetter.contains(letter) {
            usedLetter.append(letter)
        }
    }
    
    return String(usedLetter)
}

challenge6(input: "wombat")
challenge6(input: "hello")
challenge6(input: "Mississppi")


///Write a func that returns a string with any consecutive spaces replaced with a single space.
func challenge7(input: String) -> String {
    
    let edittedInput = input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
    return edittedInput
}

// [space]+ means match one or more spaces so that will cause multiple spaces to be replaced with a single space


challenge7(input: "a   b   c")
challenge7(input: "    a")
challenge7(input: "abc")



///Write a func that accepts two strings, and returns true if one string is a rotation of the other. taking letter case into account
func challenge8(inputOne: String, inputTwo: String) -> Bool {
    
    // Need to check that the letter counts for both inputs are the same or else a rotation is impossible hence the guard statement.
    guard inputOne.count == inputTwo.count else { return false }
    
    let combinedInputs = inputOne + inputOne
    return combinedInputs.contains(inputTwo)
}
