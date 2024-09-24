//
//  InfoView.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 05.09.2024.
//

import SwiftUI

struct InfoView: View {

    @Binding var selected: Int?
    var themes: [ChartsTheme]
    
    var titleOn: Bool
    
    var body: some View {
        
        NavigationView {
            List(themes, selection: $selected) { theme in
                NavigationLink{
                    InfoDetails(post: theme.post!)
                } label: {
                    InfoRow(chartTheme: theme)
                }
            }
            .navigationTitle("\(titleOn ? "TenseCharts" : "")")
            .bold()
            .font(.largeTitle)
        }
        .scrollContentBackground(.hidden)
        .background(.white)
    }
}

#Preview {
    let title = ContentView().titleOn
    let selected = ContentView().selected
    return InfoView(selected: .constant(selected), themes: DataContainer.preview, titleOn: title)
}
