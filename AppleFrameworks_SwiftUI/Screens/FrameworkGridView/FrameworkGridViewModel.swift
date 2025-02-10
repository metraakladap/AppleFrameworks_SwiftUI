//
//  FrameworkGridViewModel.swift
//  AppleFrameworks_SwiftUI
//
//  Created by User on 07.02.2025.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework : Framework? {
        didSet { isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    
    let colums: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())

    ]
}
