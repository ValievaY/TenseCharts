//
//  TenseChartsApp.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 03.09.2024.
//

import SwiftUI

@main
struct TenseChartsApp: App {
    @AppStorage("isLinkOn") private var isLinkOn = false
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isLinkOn ? .dark : .light)
        }
        .modelContainer(DataContainer.container())
        .modelContainer(for: Post.self)
    }
}
