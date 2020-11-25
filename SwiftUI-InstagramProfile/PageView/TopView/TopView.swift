//
//  TopView.swift
//  SwiftUI-InstagramProfile
//
//  Created by Ingvar on 25.11.2020.
//

import SwiftUI

struct TopView: View {
    let userItem: ListItem
    var body: some View {
        HStack {
            Image(userItem.image)
                .resizable()
                .frame(width: 75.0, height: 75.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white,
                                         lineWidth: 2))
                .shadow(radius: 4)
                .padding(.leading, 10)
            Spacer()
            InfoVStackView()
            Spacer()
        }
        .padding(EdgeInsets(top: 20, leading: 10, bottom: 10, trailing: 5))
    }
}

struct InfoVStackView: View {
    let infos = [
        InfoUserStatus(number: 2, label: "Posts"),
        InfoUserStatus(number: 6, label: "Followers"),
        InfoUserStatus(number: 7, label: "Following")
    ]
    var body: some View {
        HStack {
            ForEach(infos, id: \.self) { info in
                VStack {
                    Text("\(info.number)")
                        .bold()
                        .font(.system(size: 17))
                    Text(info.label)
                        .bold()
                        .font(.system(size: 13))
                }
                .padding(.horizontal, 6)
            }
        }
    }
}



