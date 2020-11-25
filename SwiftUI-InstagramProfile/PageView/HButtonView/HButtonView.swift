//
//  HButtonView.swift
//  SwiftUI-InstagramProfile
//
//  Created by Ingvar on 25.11.2020.
//

import SwiftUI

struct HButtonView: View {
    let buttons = ["square.grid.2x2","person.crop.rectangle"]
    var body: some View {
        HStack(alignment: .center, spacing: 50) {
            Spacer()
            ForEach(buttons, id: \.self) { button in
                Button(action: {
                    
                }, label: {
                    Image(systemName: button)
                        .font(.title)
                        .foregroundColor(Color(.label))
                })
                Spacer()
            }
        }
        .padding()
    }
}
