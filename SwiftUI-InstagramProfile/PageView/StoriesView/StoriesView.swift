//
//  StoriesView.swift
//  SwiftUI-InstagramProfile
//
//  Created by Ingvar on 25.11.2020.
//

import SwiftUI

struct StoriesView: View {
    let storiesImages = ["cat","dog","racoon","hamster"]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(storiesImages, id: \.self) { stories in
                    VStack{
                        Image(stories).resizable()
                            .frame(width: 50.0, height: 50.0)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,
                                                     lineWidth: 2))
                            .shadow(radius: 4)
                        Text(stories)
                            .font(.system(size: 10))
                    }
                    .padding(.horizontal, 10)
                }
            }
        }
    }
}
