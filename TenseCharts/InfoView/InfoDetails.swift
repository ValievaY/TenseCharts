//
//  InfoDetails.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 05.09.2024.
//

import SwiftUI

struct InfoDetails: View {
    
    var post: Post
    
    var body: some View {
        ScrollView {
            VStack {
                Text (post.title)
                    .bold()
                    .font(.largeTitle)
                
                Text ("Structure and Usage")
                    .font(.title)
                    .bold()
                    .padding()
                
                Image(post.image)
                .frame(width: 200, height: 200)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text(post.textDescription)
                Text("Basic Construction")
                    .padding(5)
                    .bold()
                Text("Positive")
                    .padding(5)
                    .bold()
                Text(post.positive)
                Text("Negative")
                    .padding(5)
                    .bold()
                Text(post.negative)
                Text("Question")
                    .padding(5)
                    .bold()
                Text(post.question)
            }
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    InfoDetails(post: DataContainer.previewTheme.post!)
}
