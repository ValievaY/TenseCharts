//
//  HelloView.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 05.09.2024.
//

import SwiftUI

struct TestView: View {
    
    var selected: Int?
     
    var themes: [ChartsTheme]
    
    var theme: ChartsTheme {
        let index = themes.firstIndex(where: { $0.id == selected })
        return themes[index ?? 1]
    }
    
    var body: some View {
        
        if selected == nil {
            Text ("Choose theme on Info")
                .font(.title)
                .bold()
        } else {
            if theme.finished {
                ResultView(theme: theme)
            } else {
                QuestionView(theme: theme)
            }
        }
    }
}

#Preview {
    let selected = ContentView().selected
    return TestView(selected: selected, themes: DataContainer.preview)
}
