import Foundation

// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target. You may assume that each input would have exactly one solution, and you may not use the same element twice. You can return the answer in any order.

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count {
                if nums[i]+nums[j]==target {
                    return [i, j]
                }
            }
        }
        return []
    }
print(twoSum([2,7,11,15], 18))
