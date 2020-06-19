//Author: Carlos Georgescu

import UIKit

//time complexity is o(n) time, space is 0(n)
func isPalindrome(_ word: String) -> Bool {
  let characters = Array(word)
    
    //if string is empty, return false
    if(word.isEmpty)
    {
        return false
    }
    
    for i in 0...characters.count/2 {
        //checks character place pairs from beginning of the word and end
        if characters[i] != characters[characters.count - i - 1]
        {
            return false
        }
    }
    
    //returns true after it checks that all the characters in the word are valid for the word to be palindrome
    return true;
}

print(isPalindrome(""))
print(isPalindrome("radar"))
print(isPalindrome("racecar"))
print(isPalindrome("Carlos"))
