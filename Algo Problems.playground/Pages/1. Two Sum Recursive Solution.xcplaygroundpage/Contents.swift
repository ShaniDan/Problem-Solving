//: [Previous](@previous)

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    func recv(_ num: Int) -> [Int]{
        for j in (num+1)..<nums.count {
            if nums[num]+nums[j]==target {
                return [num, j]
            }
        }

        if num+1 != nums.count {
            return recv(num+1)
        } else {
            return []
        }
    }
    
    return recv(0)
    
}

print(twoSum([2,7,11,15], 26))

