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
                Text("Home page")
                    .tabItem { Image(systemName: "house") }.tag(1)
                Text("Search")
                    .tabItem { Image(systemName: "magnifyingglass")}.tag(2)
                Text("Add post")
                    .tabItem { Image(systemName: "plus.square")}.tag(3)
                Text("Like")
                    .tabItem { Image(systemName: "heart.fill") }.tag(4)
                
                //Profile tab
                MainView()
                    .tabItem { Image(systemName: "person.fill") }.tag(5)
            }
            .navigationBarTitle("User_name", displayMode: .inline)
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
                .font(.system(size: 60))
                .padding(.trailing, 50)
            InfoVStackView()
        }
        .padding(.top, 20)
    }
}

struct MainView: View {
    var body: some View {
        ScrollView(.vertical) {
            TopView()
            BioView()
            BioButtonView()
            StoriesView()
            //            HStack{
            //                EditButtonView()
            //                WriteButtonView()
            //            }
            HButtonView()
            ImageView()
            // CompleteYourProfileView()
        }
    }
}

struct BioView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("User_name")
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


struct EditButtonView: View {
    var body: some View {
        Button(action: {
            print("Edit")
        }, label: {
            Text("Edit Profile")
                .bold()
                .foregroundColor(Color(.label))
        })
        .frame(width: 100, height: 30)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(8)
    }
}

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

struct WriteButtonView: View {
    var body: some View {
        Button(action: {
            print("Edit")
        }, label: {
            Text("Написать")
                .bold()
                .foregroundColor(Color(.label))
        })
        .frame(width: 100, height: 30)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(8)
    }
}

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

struct LineView: View {
    var body: some View {
       VStack {
            EmptyView()
        }
    }
}

struct ImageView: View {
    var body: some View {
        HStack(spacing: 2) {
            ForEach(0 ..< 3) { _ in
                LinearGradient(gradient: Gradient(colors: [Color.orange, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(height: 140)
            }
        }
    }
}





