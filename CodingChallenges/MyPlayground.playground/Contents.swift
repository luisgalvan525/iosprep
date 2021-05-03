import UIKit


///iOS Prep

func challenge1(string: String) -> Bool {
    let uniqueLetters = Set(string)
    return uniqueLetters.count == string.count
}


assert(challenge1(string: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(string: "abcdefghijklmnopqrstuvxyz") == true, "Challenge 1 failed")
assert(challenge1(string: "Hello, world") == false, "Challenge 1 failed")
