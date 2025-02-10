//
//  JustifiedTextView.swift
//  AppleFrameworks_SwiftUI
//
//  Created by User on 10.02.2025.
//

import SwiftUI

struct JustifiedTextView: UIViewRepresentable {
    let text: String

    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .justified
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.white
        return label
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = text
    }
}

