//
//  BioButtonView.swift
//  SwiftUI-InstagramProfile
//
//  Created by Ingvar on 25.11.2020.
//

import SwiftUI

struct BioButtonView: View {
    let buttons = ["Вы подписаны","Написать","Позвонить","^"]
    var body: some View {
        HStack {
            ForEach(buttons, id: \.self) { button in
                Button(action: {
                }, label: {
                    if button == "^" {
                        Text(button)
                            .font(.system(size: 10))
                            .bold()
                            .foregroundColor(Color(.label))
                            .frame(width: 30, height: 30)
                    } else {
                        Text(button)
                            .font(.system(size: 10))
                            .bold()
                            .foregroundColor(Color(.label))
                            .frame(width: 80, height: 30)
                    }
                })
                .background(Color(.white))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.lightGray), lineWidth: 0.5)
                )
            }
        }
        .padding(.vertical, -30)
        .padding()
    }
}
