//
//  FrameworkTitleView.swift
//  AppleFrameworks_SwiftUI
//
//  Created by User on 10.02.2025.
//

import SwiftUI

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
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
    
    
}

struct FrameworkTitleView_Preview: PreviewProvider {
    static var previews: some View {
        FrameWorkTitleView(framework: MockData.sampleFramework)
    }
}
