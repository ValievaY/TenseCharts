//
//  StatisticsView.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 10.09.2024.
//

import SwiftUI
import SwiftData
import Charts

struct StatisticsView: View {
    
    @Query(sort: [SortDescriptor(\ChartsTheme.id)]) var themes: [ChartsTheme]
    
    var body: some View {
       
        Chart(passDates) { theme in
            BarMark(x: .value("Number", theme.title),
                    y: .value("Value", theme.count - theme.wrong))
            .foregroundStyle(theme.passed ? .green : .red)
            .clipShape(RoundedRectangle(cornerRadius: 4))
        }
    }
    
    private var passDates: [ChartsTheme] {
        (themes.filter { $0.date != nil }
            .sorted { $0.date! < $1.date! })
    }
}

#Preview {
    StatisticsView()
}
