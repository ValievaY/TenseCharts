//
//  ProgressView.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 12.09.2024.
//

import SwiftUI

struct ResultView: View {
    
    var theme: ChartsTheme
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(theme.passed ? .systemGreen : .systemRed)
                    .ignoresSafeArea()
                
                VStack {
                    Text("\(theme.title)")
                        .font(.title)
                    Text("Result: correct \(theme.count - theme.wrong) from \(theme.count)")
                        .font(.title2)
                        .padding(20)
                    
                    NavigationLink("Pass test again") {
                        QuestionView(theme: theme)
                            .onAppear {
                                updateData()
                            }
                    }
                    .padding(20)
                    .buttonStyle(.plain)
                    
                    NavigationLink("Show statistic") {
                        StatisticsView()
                    }
                    .padding(20)
                    .buttonStyle(.plain)
                }
            }
        }
    }
    
    func updateData() {
        theme.finished = false
        theme.passed = false
    }
}

#Preview {
    ResultView(theme: DataContainer.previewTheme)
}
