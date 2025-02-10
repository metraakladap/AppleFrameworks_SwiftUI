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
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
        
    }
    
    
}

struct FrameworkTitleView_Preview: PreviewProvider {
    static var previews: some View {
        FrameWorkTitleView(framework: MockData.sampleFramework)
    }
}
