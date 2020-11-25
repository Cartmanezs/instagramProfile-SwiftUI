//
//  UserImageCircleView.swift
//  SwiftUI-InstagramProfile
//
//  Created by Ingvar on 25.11.2020.
//

import SwiftUI

struct UserImageCircleView: View {
    let userImageItem: ListItem
    var body: some View {
        ZStack {
            Image(userImageItem.image)
                .resizable()
                .frame(width: 60.0, height: 60.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white,
                                         lineWidth: 2))
                .shadow(radius: 4)
        }
    }
}
