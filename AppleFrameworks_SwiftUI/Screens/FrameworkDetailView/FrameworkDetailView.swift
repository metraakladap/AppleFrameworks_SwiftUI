//
//  FrameworkDetailView.swift
//  AppleFrameworks_SwiftUI
//
//  Created by User on 07.02.2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            
            
            FrameWorkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label : {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: "www.apple.com"))!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
