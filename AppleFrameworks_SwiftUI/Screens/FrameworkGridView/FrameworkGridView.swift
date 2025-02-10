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
            List {
                ForEach(MockData.frameworks) {framework in
                    NavigationLink(
                        destination: FrameworkDetailView(
                            framework: framework,
                            isShowingDetailView: $viewmodel.isShowingDetailView)) {
                                FrameWorkTitleView(framework: framework)
                            }
                }
            }
            
            .navigationTitle("🍎 Framework")
           
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}

