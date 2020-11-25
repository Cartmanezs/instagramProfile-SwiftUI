//
//  ImageView.swift
//  SwiftUI-InstagramProfile
//
//  Created by Ingvar on 25.11.2020.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        HStack(spacing: 2) {
            ForEach(0 ..< 3) { _ in
                LinearGradient(gradient: Gradient(colors: [Color.orange, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(height: 120)
            }
        }
    }
}

