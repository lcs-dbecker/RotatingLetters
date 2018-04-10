//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

//Input

//Loop forever until valid input is given.
var validInput = ""
while 1 == 1 {
    
    // Make sure input was given (creat a string from the string?)
    guard let input = readLine() else {
        
        // Tell the user there was a problem
        print("Please enter a string with at least 1 character and no more than 30 characters.")
        // Go to next iteration of the loop
        continue
    }
    
    // Is the string the correct length?
    if input.count < 1 || input.count > 30 {
        
        // Tell the user there was a problem
        print("Please enter a string with at least 1 character and no more than 30 characters.")
        // Go to next iteration of the loop
        continue
        
    }
    // Check for Capital Letters
    let upperInput = input.uppercased()
    if input != upperInput {
        continue
    }
    // If we got this far the input is guaranteed to be valid
    validInput = input
    break // Very important. Stops while loop
    
}



// Print out the input provided
//print("You said:")
//print(rawInput)




// Letters that can rotate 180 degrees
var lettersAbleToRotate = 0

// Check for uppercase


// Process - inspect each character
for individualCharacter in validInput {
    
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
if lettersAbleToRotate == validInput.count {
    print("Yes")
} else{
    print("No")
}
