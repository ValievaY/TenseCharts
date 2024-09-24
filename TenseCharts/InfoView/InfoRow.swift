//
//  InfoRow.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 05.09.2024.
//

import SwiftUI

struct InfoRow: View {
    
    @AppStorage("rowSize") private var value: Double = 100
    
    var chartTheme: ChartsTheme
    
    var body: some View {
        HStack {
            Image(String(chartTheme.id))
            .resizable()
            .scaledToFill()
            .frame(width: value)
            .padding()
            
            Text(chartTheme.title)
                .bold()
                .font(.system(size: 14))
            
            if chartTheme.passed {
                HStack{
                    Spacer()
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                }
            }
        }
        .frame(height: value)
    }
}

#Preview {
    InfoRow(chartTheme: DataContainer.previewTheme)
}
