//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Print out the input provided
//print("You said:")
//print(rawInput)

// Make sure input was given (creat a string from the string?)
guard let input : String = rawInput else{
    print("no")
    //Error
    exit(9)
}


// Letters that can rotate 180 degrees
var lettersAbleToRotate = 0

// Sentence is the right length
if input.count > 30 || input.count < 1 {
    print("No")
    exit(9)
}

// Check for uppercase


// Process - inspect each character
for individualCharacter in input {
    
    // Debug
    //print(individualCharacter)
 
    //Categorize the character
    
    switch individualCharacter{
    case "I", "O", "S", "H", "Z", "X", "N":
        lettersAbleToRotate += 1
 
    default:
        break // do nothing
    }
}

// output
if lettersAbleToRotate == input.count {
    print("Yes")
} else{
    print("No")
}
