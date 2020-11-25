//
//  BioView.swift
//  SwiftUI-InstagramProfile
//
//  Created by Ingvar on 25.11.2020.
//

import SwiftUI

struct BioView: View {
    let userName: ListItem
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(userName.userName)
                    .bold()
                Text("Blogger")
                    .foregroundColor(Color(.lightGray))
                Text("www.myWebsite.com/")
                Text("subscribe to my chanel")
                BioFollowersStatus()
                    .padding(.vertical, 8)
            }
            .font(.system(size: 12))
            
            Spacer()
        }
        .padding()
    }
}

struct BioFollowersStatus: View {
    var body: some View {
        HStack {
            Text("Following:")
            Text("baby_drive_user,lenab and more 4")
                .bold()
        }
    }
}
