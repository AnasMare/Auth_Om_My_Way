//
//  HomeScreenView.swift
//  Auth
//
//  Created by user on 2/26/24.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem(){
                    Image(systemName: "house.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                    Text("Home")
                }
            RequestsView()
                .tabItem(){
                    Image(systemName: "text.bubble.fill")
                           .font(.system(size: 24))
                           .foregroundColor(.blue)
                    Text("Requests")
                }
            MessageView()
                .tabItem(){
                    Image(systemName: "message.fill")
                           .font(.system(size: 24))
                           .foregroundColor(.blue)
                    Text("Messages")
                }
            MessageView()
                .tabItem(){
                    Image(systemName: "person.fill")
                           .font(.system(size: 24))
                    Text("Profile")
                   
                }
            
            
        }
    }
}

#Preview {
    HomeScreenView()
}
