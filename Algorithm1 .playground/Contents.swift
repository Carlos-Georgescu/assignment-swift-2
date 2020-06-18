import UIKit


//this solution is o(n) time complexity using o(n*2) space
func findPairs(in array: [Int], withSum sum: Int) {
    //unique numbers in the array
    var uniqueNumbers = Set<Int>()
    
    //put all the pairs that were found
    var foundPairs = Set<Int>()
    
    for index in array{
        if(uniqueNumbers.contains(sum-index) && !foundPairs.contains(index) && !foundPairs.contains(sum-index))
        {
            print("(\(index), \(sum-index))")
            foundPairs.insert(sum-index)
            foundPairs.insert(index)
            continue
        }
        uniqueNumbers.insert(index)
    }
}

findPairs(in: [2, 4, 5, 1, 3, 5, 4], withSum: 6)
findPairs(in: [2, 4, 4, 0, 6, 5, 4, 2, -2, 8], withSum: 6)
findPairs(in: [-2, -4, -2, 0, -7, -8, 4,0, 0], withSum: -4)
findPairs(in: [1,2,3,4,5,6,6,7,8,9], withSum: -2)
findPairs(in: [-14, -10, 5, 100, 17, 1000, -1000], withSum: -24)
