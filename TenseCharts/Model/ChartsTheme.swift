//
//  TestPart.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 08.09.2024.
//

import Foundation
import SwiftData

@Model
class ChartsTheme {
    var id: Int
    var title: String
    var passed: Bool
    var date: Date?
    var count: Int
    var wrong: Int
    var finished: Bool
    var post: Post?
    
    init(id: Int, title: String, passed: Bool = false, date: Date? = nil, count: Int, finished: Bool = false) {
        self.id = id
        self.title = title
        self.passed = passed
        self.date = date
        self.count = count
        wrong = count
        self.finished = finished
    }
}
