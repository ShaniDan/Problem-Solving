//: [Previous](@previous)

/*
 Write a function that takes as input two arguments:

 1. An array of numbers
 2. An integer `k`

 and returns an array with all of the pairs of numbers from that array that sum to `k`. You can’t use the same number twice. You can assume that there are no duplicate numbers in the array.

 Example

 - Input array: `[1, 9, 6, 3, 5, 4]`
 - `k`: 10
 - Result: `[[1, 9], [6, 4]]` // Note that `[5, 5]` is not in the solution

 */

import Foundation

func pairSum(nums: [Int], k: Int ) -> [Int] {
    var result = [Int]()
    for i in 0..<nums.count {
        for j in(i+1)..<nums.count {
            let sum = nums[i] + nums[j]
            if sum == k {
                result.append(contentsOf: [nums[i], nums[j]])
            }
        }
    }
    return result
}
print(pairSum(nums: [1,9,6,3,5,4], k: 10))
