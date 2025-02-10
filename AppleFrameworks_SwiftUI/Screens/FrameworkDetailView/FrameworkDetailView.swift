//
//  FrameworkDetailView.swift
//  AppleFrameworks_SwiftUI
//
//  Created by User on 07.02.2025.
//

import SwiftUI

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.6), Color.black.opacity(0.8)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Spacer()
                
                VStack {
                    FrameWorkTitleView(framework: framework)
                    Text(framework.description)
                        .font(.body)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                .padding()
                .background(Color.white.opacity(0.2))
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding()
                
                Spacer()
                
                Button {
                    isShowingSafariView = true
                } label: {
                    Label("Learn More", systemImage: "book.fill")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(20)
                        .shadow(radius: 5)
                        .tint(.red)

                }
    
                .controlSize(.large)
                .padding(.horizontal, 40)
                
            }
            Spacer()
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: "https://www.apple.com"))!)
        })
    }
}


#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
