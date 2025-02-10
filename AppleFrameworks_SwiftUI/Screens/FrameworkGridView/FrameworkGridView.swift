//
//  FrameworkGridView.swift
//  AppleFrameworks_SwiftUI
//
//  Created by User on 07.02.2025.
//

import SwiftUI



struct FrameworkGridView: View {
    
    @StateObject var viewmodel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: viewmodel.colums) {
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

