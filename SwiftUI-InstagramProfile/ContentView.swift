//
//  ContentView.swift
//  SwiftUI-InstagramProfile
//
//  Created by Ingvar on 24.11.2020.
//

import SwiftUI

struct ContentView: View {
    
    private let userList: [ListItem] = [
        ListItem(
            image: "igor",
            userName: "developer13"),
        ListItem(
            image: "eminem",
            userName: "eminem"),
        ListItem(
            image: "drake",
            userName: "kingDrake"),
        ListItem(
            image: "clark",
            userName: "emilia"),
        ListItem(
            image: "margo",
            userName: "margot_robbie"),
        ListItem(
            image: "messi",
            userName: "lionelMessi"),
        ListItem(
            image: "ronaldo",
            userName: "ronaldo07"),
    ]
    
    var body: some View {
        NavigationView {
            List(userList) { userItem in
                NavigationLink(destination: MainView(userItem: userItem)) {
                    HStack{
                        UserImageCircleView(userImageItem: userItem)
                        Text(userItem.userName).font(.headline)
                    }
                    .padding(5)
                }
            }
            .navigationBarTitle("Users")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
