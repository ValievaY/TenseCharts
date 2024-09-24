//
//  ContentView.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 03.09.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @AppStorage("titleOn") var titleOn = false
    @State var selected: Int?
    @Query(sort: [SortDescriptor(\ChartsTheme.id)]) var themes: [ChartsTheme]
    
    var body: some View {
        TabView() {
            InfoView(selected: $selected, themes: themes, titleOn: titleOn)
                .tabItem {
                    Label("Info", systemImage: "book")
                }
            
            TestView(selected: selected, themes: themes)
                .tabItem {
                    Label("Test", systemImage: "doc.questionmark")
                }
            
            SettingsView(titleOn: $titleOn)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    let container = DataContainer.container(inMemory: true)
        return ContentView()
            .modelContainer(container)
          
}
