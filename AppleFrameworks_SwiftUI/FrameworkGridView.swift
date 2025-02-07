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
    var body: some View {
        LazyVGrid(columns: colums) {
            FrameWorkTitleView(name: "App Clips", imageName: "app-clip")
            FrameWorkTitleView(name: "App Clips", imageName: "app-clip")
            FrameWorkTitleView(name: "App Clips", imageName: "app-clip")
            FrameWorkTitleView(name: "App Clips", imageName: "app-clip")
            FrameWorkTitleView(name: "App Clips", imageName: "app-clip")
            FrameWorkTitleView(name: "App Clips", imageName: "app-clip")
            FrameWorkTitleView(name: "App Clips", imageName: "app-clip")
            FrameWorkTitleView(name: "App Clips", imageName: "app-clip")

        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameWorkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
    
    
}
