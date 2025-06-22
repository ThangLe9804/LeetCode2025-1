//
//  LeetCode2025_1Tests.swift
//  LeetCode2025-1Tests
//
//  Created by Thang Le on 6/6/25.
//

@testable import LeetCode2025_1
import XCTest

/*
 ----------Two Sum----------

 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.

 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

 Example 2:

 Input: nums = [3,2,4], target = 6
 Output: [1,2]

 Example 3:

 Input: nums = [3,3], target = 6
 Output: [0,1]

 Constraints:

     2 <= nums.length <= 104
     -109 <= nums[i] <= 109
     -109 <= target <= 109
     Only one valid answer exists.

 Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?
 */

final class LeetCode2025_TwoSum: XCTestCase {
    class Solution {
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            var dict: [Int: Int] = [:]
            for (index, num) in nums.enumerated() {
                let diff = target - num
                if let matchIndex = dict[diff] {
                    return [matchIndex, index]
                }
                dict[num] = index
            }

            return []
        }
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        let solution = Solution()
        XCTAssertEqual(solution.twoSum([2, 7, 11, 15], 9), [0, 1])
        XCTAssertEqual(solution.twoSum([3, 3], 6), [0, 1])
        XCTAssertEqual(solution.twoSum([-1, 1, 2], 3), [1, 2])
    }
}
