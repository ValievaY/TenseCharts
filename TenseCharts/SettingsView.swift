//
//  SettingsView.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 05.09.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("rowSize") private var value: Double = 100
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("isLinkOn") private var isLinkOn = false
    @Binding var titleOn: Bool
    @State private var isEditing = false
    
    var body: some View {
        Form {
            Section {
                Toggle("\(colorScheme == .light ? "Light Theme enabled" : "Dark Theme enabled")", isOn: $isLinkOn.animation())
                
            }
            
            Section {
                Toggle("\(titleOn ? "Navigation title enabled" : "Navigation title not enabled")", isOn: $titleOn.animation())
            }
            
            Section {
                VStack {
                    Slider(value: $value, in: 50...150, step: 5, onEditingChanged: { editing in
                        isEditing = editing
                     })
                    Text("Row size \(value, specifier: "%.1f")")
                    Spacer()
                    if isEditing {
                        HStack {
                            Image("1")
                                .resizable()
                                .frame(width: value)
                            Text("Present Simple").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        }
                        .frame(height: value)
                    }
                }
            }
        }
    }
}


#Preview {
    let title = ContentView().titleOn
    return SettingsView(titleOn: .constant(title))
}
