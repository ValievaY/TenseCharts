//
//  Post.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 03.09.2024.
//

import SwiftUI
import SwiftData

@Model
class Post {
    let id: Int
    let title: String
    let textDescription: String
    let positive: String
    let negative: String
    let question: String
    let image: String
    var theme: ChartsTheme?
    
    init(id: Int = 0, title: String = "", textDescription: String = "", positive: String = "", negative: String = "", question: String = "", image: String = "") {
        self.id = id
        self.title = title
        self.textDescription = textDescription
        self.positive = positive
        self.negative = negative
        self.question = question
        self.image = image
    }
}
