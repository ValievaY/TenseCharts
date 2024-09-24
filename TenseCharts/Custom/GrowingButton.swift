//
//  GrowingButton.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 09.09.2024.
//

import SwiftUI

struct GrowingButton: PrimitiveButtonStyle {
    
    var color: Color?
    
    @State var pressed = false
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(color!)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(pressed ? 1.2 : 1.0)
            .opacity(pressed ? 0.6 : 1.0)
            .animation(.easeInOut, value: pressed)
            .gesture(DragGesture(minimumDistance: 0).onChanged { _ in
                pressed = true
            }.onEnded { value in
                pressed = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                    configuration.trigger()
                }
            })
    }
}

