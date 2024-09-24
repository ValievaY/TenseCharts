//
//  TestView.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 08.09.2024.
//

import SwiftUI

struct QuestionView: View {
    
    var theme: ChartsTheme
    
    @State private var questNumber = 1
    @State private var isCorrect: Bool?
    @State private var didTap: Bool = false
    
    var test: [Test] {
        PostData.questionsData[theme.id]!
    }
    
    var question: Test {
        test[questNumber-1]
    }
    
    var body: some View {
        
        if theme.finished {
            ResultView(theme: theme)
        } else {
            VStack {
                Text("Choose sentence in \(theme.title)")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(40)
                
                ForEach(question.answers, id: \.self) { answer in
                    Button(answer) {
                        check(answer)
                        updateData()
                        didTap = true
                    }
                    .disabled(didTap == true)
                    .buttonStyle(GrowingButton(color: buttonColor()))
                }
                
               Spacer()
                
                Button ("Next question") {
                    
                    didTap = false
                    if isCorrect != nil, questNumber < test.count {
                        questNumber += 1
                        isCorrect = nil
                    } else {
                        theme.finished = true
                    }
                }
                
                .disabled(didTap == false)
                .buttonStyle(GrowingButton(color: .blue))
            }
        }
    }
    
    private func check(_ answer: String) {
        let ind = question.answers.firstIndex(of: answer) ?? -1
        isCorrect = question.correct.contains(ind)
    }
    
    private func buttonColor() -> Color {
        if isCorrect != nil {
            return isCorrect! ? Color(.green) : Color(.red)
        } else {
            return Color(.gray)
        }
    }
    
    private func updateData() {
        
        if questNumber == 1 {
            theme.wrong = theme.count
            theme.passed = false
        }
        if isCorrect! {
            theme.wrong -= 1
        }
        if questNumber == question.answers.count, theme.wrong == 0 {
            theme.passed = true
        }
        theme.date = .now
    }
}

#Preview {
    QuestionView(theme: DataContainer.previewTheme)
}
