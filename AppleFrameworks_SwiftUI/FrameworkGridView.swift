//
//  FrameworkGridView.swift
//  AppleFrameworks_SwiftUI
//
//  Created by User on 07.02.2025.
//

import SwiftUI

let colums: [GridItem] = [GridItem(.flexible()),
                          GridItem(.flexible()),
                          GridItem(.flexible())

]

struct FrameworkGridView: View {
    
    @StateObject var viewmodel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: colums) {
                    ForEach(MockData.frameworks) {framework in
                        FrameWorkTitleView(framework: framework)
                            .onTapGesture {
                                viewmodel.selectedFramework = framework
                            }
                        
                    }
                }
            }
            .navigationTitle("🍎 Framework")
            .sheet(isPresented: $viewmodel.isShowingDetailView) {
                FrameworkDetailView(framework: viewmodel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewmodel.isShowingDetailView)
            }
        }
        
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameWorkTitleView: View {
    let framework: Framework
    
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
    
    
}
