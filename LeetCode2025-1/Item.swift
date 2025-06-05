//
//  Item.swift
//  LeetCode2025-1
//
//  Created by Thang Le on 6/6/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
