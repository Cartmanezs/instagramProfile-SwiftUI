//
//  MainView.swift
//  SwiftUI-InstagramProfile
//
//  Created by Ingvar on 25.11.2020.
//

import SwiftUI

struct MainView: View {
    let userItem: ListItem
    var body: some View {
        ScrollView(.vertical) {
            TopView(userItem: userItem)
            BioView(userName: userItem)
            BioButtonView()
            StoriesView()
            HButtonView()
            ImageView()
        }
        .navigationBarTitle(userItem.userName, displayMode: .inline)
    }
}

