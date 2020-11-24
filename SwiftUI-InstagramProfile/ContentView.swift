//
//  ContentView.swift
//  SwiftUI-InstagramProfile
//
//  Created by Ingvar on 24.11.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 5

    var body: some View {
        NavigationView {
            TabView(selection: $selected) {
                Text("Home page").tabItem { Image(systemName: "house") }.tag(1)
                Text("Search").tabItem { Image(systemName: "magnifyingglass")}.tag(2)
                Text("Add post").tabItem { Image(systemName: "plus.square")}.tag(3)
                Text("Like").tabItem { Image(systemName: "heart.fill") }.tag(4)
    
                //Profile tab
                ScrollView(.vertical) {
                    TopView()
                }
                .navigationBarTitle("User_name", displayMode: .inline)
                .tabItem { Image(systemName: "person.fill") }.tag(5)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Info: Hashable {
    let number: Int
    let label: String
}

struct InfoVStackView: View {
    let infos = [
        Info(number: 2, label: "Posts"),
        Info(number: 6, label: "Followers"),
        Info(number: 7, label: "Following")
    ]
    var body: some View {
        HStack {
            ForEach(infos, id: \.self) { info in
                VStack {
                    Text("\(info.number)")
                        .bold()
                        .font(.system(size: 14))
                    Text(info.label)
                        .bold()
                        .font(.system(size: 13))
                }
                .padding(.horizontal, 6)
            }
        }
    }
}

struct TopView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle.badge.plus")
                .font(.system(size: 50))
                .padding(.trailing, 10)
            InfoVStackView()
        }
        .padding(.top, 20)
    }
}

