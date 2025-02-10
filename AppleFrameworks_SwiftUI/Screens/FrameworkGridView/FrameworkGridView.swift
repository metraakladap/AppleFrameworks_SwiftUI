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
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewmodel.colums) {
                    ForEach(MockData.frameworks) {framework in
                        NavigationLink(value: framework){
                            FrameWorkTitleView(framework: framework)
                        }
                        
                            
                        
                    }
                }
            }
            .navigationTitle("🍎 Framework")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
        
    }
}

#Preview {
    FrameworkGridView()
}

